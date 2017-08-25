#include "store.hpp"

Store::Store(QObject *parent) : QObject(parent)
{
    m_brushSize = 10;
}

int Store::brushSize() {
    return m_brushSize;
}

void Store::setBrushSize(const int &brushSize) {
    if( m_brushSize == brushSize )
        return;
    m_brushSize = brushSize;
    emit brushSizeChanged();
}
