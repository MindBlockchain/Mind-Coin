// Copyright (c) 2017-2019 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef MINDBLOCKCHAIN_QT_TEST_WALLETTESTS_H
#define MINDBLOCKCHAIN_QT_TEST_WALLETTESTS_H

#include <QObject>
#include <QTest>

namespace interfaces {
class Node;
} // namespace interfaces

class WalletTests : public QObject
{
 public:
    WalletTests(interfaces::Node& node) : m_node(node) {}
    interfaces::Node& m_node;

    Q_OBJECT

private Q_SLOTS:
    void walletTests();
};

#endif // MINDBLOCKCHAIN_QT_TEST_WALLETTESTS_H