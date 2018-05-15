/* generated by rust_qt_binding_generator */
#ifndef TEST_LIST_TYPES_RUST_H
#define TEST_LIST_TYPES_RUST_H

#include <QObject>
#include <QAbstractItemModel>

class List;

class List : public QAbstractItemModel
{
    Q_OBJECT
public:
    class Private;
private:
    Private * m_d;
    bool m_ownsPrivate;
    explicit List(bool owned, QObject *parent);
public:
    explicit List(QObject *parent = nullptr);
    ~List();

    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const override;
    QModelIndex parent(const QModelIndex &index) const override;
    bool hasChildren(const QModelIndex &parent = QModelIndex()) const override;
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    bool canFetchMore(const QModelIndex &parent) const override;
    void fetchMore(const QModelIndex &parent) override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    void sort(int column, Qt::SortOrder order = Qt::AscendingOrder) override;
    QHash<int, QByteArray> roleNames() const override;
    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const override;
    bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value, int role = Qt::EditRole) override;
    Q_INVOKABLE bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex()) override;
    Q_INVOKABLE bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex()) override;
    bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole) override;
    Q_INVOKABLE QVariant boolean(int row) const;
    Q_INVOKABLE bool setBoolean(int row, const QVariant& value);
    Q_INVOKABLE QVariant bytearray(int row) const;
    Q_INVOKABLE bool setBytearray(int row, const QVariant& value);
    Q_INVOKABLE QVariant f32(int row) const;
    Q_INVOKABLE bool setF32(int row, const QVariant& value);
    Q_INVOKABLE QVariant f64(int row) const;
    Q_INVOKABLE bool setF64(int row, const QVariant& value);
    Q_INVOKABLE QVariant i16(int row) const;
    Q_INVOKABLE bool setI16(int row, const QVariant& value);
    Q_INVOKABLE QVariant i32(int row) const;
    Q_INVOKABLE bool setI32(int row, const QVariant& value);
    Q_INVOKABLE QVariant i64(int row) const;
    Q_INVOKABLE bool setI64(int row, const QVariant& value);
    Q_INVOKABLE QVariant i8(int row) const;
    Q_INVOKABLE bool setI8(int row, const QVariant& value);
    Q_INVOKABLE QVariant optionalBoolean(int row) const;
    Q_INVOKABLE bool setOptionalBoolean(int row, const QVariant& value);
    Q_INVOKABLE QVariant optionalBytearray(int row) const;
    Q_INVOKABLE bool setOptionalBytearray(int row, const QVariant& value);
    Q_INVOKABLE QVariant optionalString(int row) const;
    Q_INVOKABLE bool setOptionalString(int row, const QVariant& value);
    Q_INVOKABLE QVariant string(int row) const;
    Q_INVOKABLE bool setString(int row, const QVariant& value);
    Q_INVOKABLE QVariant u16(int row) const;
    Q_INVOKABLE bool setU16(int row, const QVariant& value);
    Q_INVOKABLE QVariant u32(int row) const;
    Q_INVOKABLE bool setU32(int row, const QVariant& value);
    Q_INVOKABLE QVariant u64(int row) const;
    Q_INVOKABLE bool setU64(int row, const QVariant& value);
    Q_INVOKABLE QVariant u8(int row) const;
    Q_INVOKABLE bool setU8(int row, const QVariant& value);

signals:
    // new data is ready to be made available to the model with fetchMore()
    void newDataReady(const QModelIndex &parent) const;
private:
    QHash<QPair<int,Qt::ItemDataRole>, QVariant> m_headerData;
    void initHeaderData();
signals:
};
#endif // TEST_LIST_TYPES_RUST_H
