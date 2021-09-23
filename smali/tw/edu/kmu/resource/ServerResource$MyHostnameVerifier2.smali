.class Ltw/edu/kmu/resource/ServerResource$MyHostnameVerifier2;
.super Ljava/lang/Object;
.source "ServerResource.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/resource/ServerResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHostnameVerifier2"
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/resource/ServerResource;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/resource/ServerResource;)V
    .locals 0

    .line 482
    iput-object p1, p0, Ltw/edu/kmu/resource/ServerResource$MyHostnameVerifier2;->this$0:Ltw/edu/kmu/resource/ServerResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/resource/ServerResource;Ltw/edu/kmu/resource/ServerResource$1;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Ltw/edu/kmu/resource/ServerResource$MyHostnameVerifier2;-><init>(Ltw/edu/kmu/resource/ServerResource;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .line 485
    invoke-static {}, Ltw/edu/kmu/resource/ServerResource;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyHostnameVerifier2 hostname is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "kmu.edu.tw"

    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 489
    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 490
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
