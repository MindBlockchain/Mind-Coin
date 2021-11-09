#!/usr/bin/env bash
# Copyright (c) 2016-2019 The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

MINDBLOCKCHAIND=${MINDBLOCKCHAIND:-$BINDIR/mindblockchaind}
MINDBLOCKCHAINCLI=${MINDBLOCKCHAINCLI:-$BINDIR/mindblockchain-cli}
MINDBLOCKCHAINTX=${MINDBLOCKCHAINTX:-$BINDIR/mindblockchain-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/mindblockchain-wallet}
MINDBLOCKCHAINQT=${MINDBLOCKCHAINQT:-$BINDIR/qt/mindblockchain-qt}

[ ! -x $MINDBLOCKCHAIND ] && echo "$MINDBLOCKCHAIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a MINDVER <<< "$($MINDBLOCKCHAINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for mindblockchaind if --version-string is not set,
# but has different outcomes for mindblockchain-qt and mindblockchain-cli.
echo "[COPYRIGHT]" > footer.h2m
$MINDBLOCKCHAIND --version | sed -n '1!p' >> footer.h2m

for cmd in $MINDBLOCKCHAIND $MINDBLOCKCHAINCLI $MINDBLOCKCHAINTX $WALLET_TOOL $MINDBLOCKCHAINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${MINDVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${MINDVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
