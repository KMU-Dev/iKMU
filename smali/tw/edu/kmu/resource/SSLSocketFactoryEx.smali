.class public Ltw/edu/kmu/resource/SSLSocketFactoryEx;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SSLSocketFactoryEx.java"


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const-string p1, "TLS"

    .line 17
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/resource/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 21
    new-instance p1, Ltw/edu/kmu/resource/MyX509TrustManager;

    invoke-direct {p1, p2, p3}, Ltw/edu/kmu/resource/MyX509TrustManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Ltw/edu/kmu/resource/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 p3, 0x1

    new-array p3, p3, [Ljavax/net/ssl/TrustManager;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p3, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Ltw/edu/kmu/resource/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Ltw/edu/kmu/resource/SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
