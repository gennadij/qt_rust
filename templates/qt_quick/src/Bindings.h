/* generated by rust_qt_binding_generator */
#ifndef BINDINGS_H
#define BINDINGS_H

#include <QtCore/QObject>
#include <QtCore/QAbstractItemModel>

class Radicand;
class Time;

class Radicand : public QObject
{
    Q_OBJECT
public:
    class Private;
private:
    Private * m_d;
    bool m_ownsPrivate;
    Q_PROPERTY(QString param READ param WRITE setParam NOTIFY paramChanged FINAL)
    Q_PROPERTY(quint32 rad READ rad NOTIFY radChanged FINAL)
    explicit Radicand(bool owned, QObject *parent);
public:
    explicit Radicand(QObject *parent = nullptr);
    ~Radicand();
    QString param() const;
    void setParam(const QString& v);
    quint32 rad() const;
Q_SIGNALS:
    void paramChanged();
    void radChanged();
};

class Time : public QObject
{
    Q_OBJECT
public:
    class Private;
private:
    Private * m_d;
    bool m_ownsPrivate;
    Q_PROPERTY(quint32 hour READ hour NOTIFY hourChanged FINAL)
    Q_PROPERTY(quint32 minute READ minute NOTIFY minuteChanged FINAL)
    Q_PROPERTY(quint32 second READ second NOTIFY secondChanged FINAL)
    explicit Time(bool owned, QObject *parent);
public:
    explicit Time(QObject *parent = nullptr);
    ~Time();
    quint32 hour() const;
    quint32 minute() const;
    quint32 second() const;
Q_SIGNALS:
    void hourChanged();
    void minuteChanged();
    void secondChanged();
};
#endif // BINDINGS_H
