#include <cstddef>
#include <iostream>

template < class T > class List {
    typedef size_t int_s;

protected:
    int_s iSize = 0;
    struct Node {
        T     tData;
        Node* npNext = nullptr;
    } node;
    Node* npGet( int_s index ) {
        if ( index > iSize + 1 )
            return nullptr;
        Node* np = &node;
        for ( int_s i = 0; i < index; i++ )
            np = np->npNext;
        return np;
    }
    void set( T& tData, T t ) {
        tData = t;
    }

public:
    const int_s iGetSize() {
        return iSize;
    }
    bool bDel( int_s index ) {
        if ( index < 0 || index >= iSize )
            return false;
        Node* np = npGet( index + 2 );
        delete[] npGet( index + 1 );
        npGet( index )->npNext = np;
        iSize--;
        return true;
    }
    bool bAdd( int_s index, T t ) {
        if ( index < 0 || index > iSize )
            return false;
        Node* np                   = npGet( index + 1 );
        npGet( index )->npNext     = new Node;
        npGet( index + 1 )->npNext = np;
        set( npGet( index + 1 )->tData, t );
        iSize++;
        return true;
    }
    T tGetData( int_s index ) {
        if ( index < 0 || index >= iSize )
            return false;
        return npGet( index + 1 )->tData;
    }

public:
    bool bDel() {
        return bDel( iSize - 1 );
    }
    bool bAdd( T t ) {
        return bAdd( iSize, t );
    }
    bool bSetData( int_s index, T t ) {
        if ( index < 0 || index >= iSize )
            return false;
        set( npGet( index + 1 )->tData, t );
        return true;
    }
    bool bSwap( int_s i0, int_s i1 ) {
        if ( i0 < 0 || i1 < 0 || i0 >= iSize || i1 >= iSize )
            return false;
        Node *np00 = npGet( i0 + 1 ), *np01 = npGet( i0 + 2 ),
             *np10 = npGet( i1 + 1 ), *np11 = npGet( i1 + 2 );
        npGet( i0 )->npNext     = np10;
        npGet( i0 + 1 )->npNext = np01;
        npGet( i1 )->npNext     = np00;
        npGet( i1 + 1 )->npNext = np11;
        return true;
    }
    T* taToArray() {
        T*    ta = new T[ iSize ];
        Node* np = node.npNext;
        for ( int_s i = 0; i < iSize; i++ ) {
            set( ta[ i ], np->tData );
            np = np->npNext;
        }
        return ta;
    }
};

int main( void ) {
    return 0;
}
