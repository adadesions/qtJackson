#ifndef STORE_HPP
#define STORE_HPP

#include <QObject>

class Store : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int brushSize READ brushSize WRITE setBrushSize NOTIFY brushSizeChanged)
public:
    explicit Store(QObject *parent = 0);
    int brushSize();
    void setBrushSize( const int &brushSize );

signals:
    void brushSizeChanged();

private:
    int m_brushSize;

public slots:
};

#endif // STORE_HPP
