.class public Ltw/edu/kmu/tool/SystemInfoTool;
.super Ljava/lang/Object;
.source "SystemInfoTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemInfoTool"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chechkSensor(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "sensor"

    .line 293
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x3

    .line 294
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final getAPNType(Landroid/content/Context;)I
    .locals 2

    const-string v0, "connectivity"

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 231
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x2

    :cond_2
    :goto_0
    return v0
.end method

.method public static getSerial()Ljava/lang/String;
    .locals 7

    const-string v0, "init"

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 74
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 75
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 76
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.serialno"

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 78
    sget-object v2, Ltw/edu/kmu/tool/SystemInfoTool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSerial error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, ""

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "NONE"

    :cond_0
    return-object v0
.end method

.method public static final getStringFromResources(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 259
    const-class v0, Ltw/edu/kmu/act/R$string;

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    .line 264
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemAvaialbeMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "activity"

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 62
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 64
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 65
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isNetworkAlive(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 214
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "window"

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->px2dip(Landroid/content/Context;F)I

    move-result v1

    .line 275
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Ltw/edu/kmu/tool/ImageTool;->px2dip(Landroid/content/Context;F)I

    move-result p0

    .line 276
    sget-object v0, Ltw/edu/kmu/tool/SystemInfoTool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device width dpi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and height dpi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x226

    if-lt v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 284
    :goto_0
    sget-object v0, Ltw/edu/kmu/tool/SystemInfoTool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPad value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static final isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    const-string v0, "activity"

    .line 191
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x64

    .line 193
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 196
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public static prepareSelfSign(Landroid/content/Context;)Ljavax/net/ssl/SSLContext;
    .locals 5

    const/4 v0, 0x0

    .line 309
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 311
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 320
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0005

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "X.509"

    .line 322
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 323
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 325
    invoke-virtual {v1, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v3, "ca"

    .line 326
    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 327
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 329
    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    .line 330
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :try_start_3
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    .line 345
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    move-object p0, v1

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v4

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v4

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v4

    goto/16 :goto_5

    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v4

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_7
    move-exception v1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    :catch_8
    move-exception v1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_3

    :catch_9
    move-exception v1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_4

    :catch_a
    move-exception v1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_5

    :catch_b
    move-exception v1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_8

    :catch_c
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    .line 341
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    .line 345
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11

    goto :goto_7

    :catch_d
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    .line 339
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v0, :cond_2

    goto :goto_2

    :catch_e
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    .line 337
    :goto_4
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    if-eqz v0, :cond_2

    goto :goto_2

    :catch_f
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    .line 335
    :goto_5
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    if-eqz v0, :cond_2

    goto :goto_2

    :catch_10
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    .line 333
    :goto_6
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_2

    :catch_11
    :cond_2
    :goto_7
    return-object p0

    :goto_8
    if-eqz p0, :cond_3

    .line 345
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_12

    .line 349
    :catch_12
    :cond_3
    throw v0
.end method


# virtual methods
.method public formatSize(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x400

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-string v2, "KB"

    .line 139
    div-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    const-string v2, "MB"

    div-float/2addr p1, p2

    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_2

    const-string v2, "GB"

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    long-to-float p1, p1

    const/4 v2, 0x0

    .line 151
    :cond_2
    :goto_0
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "#0.00"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    float-to-double v3, p1

    invoke-virtual {p2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRomMemroy()[J
    .locals 5

    const/4 v0, 0x2

    .line 90
    new-array v0, v0, [J

    .line 92
    invoke-virtual {p0}, Ltw/edu/kmu/tool/SystemInfoTool;->getTotalInternalMemorySize()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 95
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 96
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 98
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    mul-long v3, v3, v1

    const/4 v1, 0x1

    aput-wide v3, v0, v1

    .line 100
    invoke-virtual {p0}, Ltw/edu/kmu/tool/SystemInfoTool;->getVersion()[Ljava/lang/String;

    return-object v0
.end method

.method public getTotalInternalMemorySize()J
    .locals 4

    .line 105
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 108
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getVersion()[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x4

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "null"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "null"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "null"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "null"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "/proc/version"

    .line 118
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 121
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 123
    aget-object v6, v6, v4

    aput-object v6, v0, v2

    .line 124
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 128
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 129
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v1, v0, v5

    return-object v0
.end method
