.class public Ltw/edu/kmu/act/MainPageActivityV2;
.super Ltw/edu/kmu/act/BasicActivity;
.source "MainPageActivityV2.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;,
        Ltw/edu/kmu/act/MainPageActivityV2$UpdateMachineData;,
        Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;,
        Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;,
        Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainPageActivityV2"


# instance fields
.field private APP_PERMISSONS:I

.field private final CLOSE_PROGRESSBAR:I

.field private final CLOSE_TIMER:I

.field private appPermissonsParams:[Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bs:Ljava/io/ByteArrayOutputStream;

.field private bundle:Landroid/os/Bundle;

.field private configData:Ltw/edu/kmu/vo/ConfigData;

.field private configFilter:Landroid/content/IntentFilter;

.field private configReceiver:Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private isNetReg:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Ltw/edu/kmu/receiver/NetworkReceiver;

.field private progressbar:Landroid/widget/ProgressBar;

.field private rlRoot:Landroid/widget/RelativeLayout;

.field private sharedData:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0x14

    .line 72
    iput v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->CLOSE_TIMER:I

    const/16 v0, 0xa

    .line 74
    iput v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->CLOSE_PROGRESSBAR:I

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isNetReg:Z

    .line 93
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->bs:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    .line 95
    iput v1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->APP_PERMISSONS:I

    const/4 v1, 0x4

    .line 96
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v0

    const-string v0, "android.permission.CAMERA"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "android.permission.CALL_PHONE"

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->appPermissonsParams:[Ljava/lang/String;

    .line 483
    new-instance v0, Ltw/edu/kmu/act/MainPageActivityV2$8;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/MainPageActivityV2$8;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/MainPageActivityV2;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 64
    iget-object p0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getToken()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ltw/edu/kmu/act/MainPageActivityV2;Ltw/edu/kmu/vo/ConfigData;)Ltw/edu/kmu/vo/ConfigData;
    .locals 0

    .line 64
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->configData:Ltw/edu/kmu/vo/ConfigData;

    return-object p1
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/MainPageActivityV2;)Landroid/widget/ProgressBar;
    .locals 0

    .line 64
    iget-object p0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->progressbar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/MainPageActivityV2;I)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->getResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/MainPageActivityV2;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->readServerData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/MainPageActivityV2;)Landroid/content/SharedPreferences;
    .locals 0

    .line 64
    iget-object p0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private checkPermissions()V
    .locals 3

    .line 242
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->appPermissonsParams:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "checkPermissions start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "\u9700\u8981\u4f4d\u7f6e\u3001\u76f8\u6a5f\u3001\u5132\u5b58\u3001\u96fb\u8a71\u7b49\u6b0a\u9650"

    .line 246
    iget v1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->APP_PERMISSONS:I

    iget-object v2, p0, Ltw/edu/kmu/act/MainPageActivityV2;->appPermissonsParams:[Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1

    .line 911
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getToken()V
    .locals 4

    .line 176
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$1;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isConnected()Z
    .locals 9

    const-string v0, "connectivity"

    .line 946
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 947
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 948
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 955
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 956
    sget-object v2, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v3, "info connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    :cond_1
    sget-object v2, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v3, "info disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 963
    :try_start_0
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v2, "info is available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v0, Ljava/lang/ProcessBuilder;

    new-array v2, v1, [Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/bin/ping"

    aput-object v3, v2, v1

    const-string v3, "-c 1"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v5, "mbms.kmu.edu.tw"

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    .line 970
    invoke-virtual {v0, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    .line 971
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, ""

    .line 975
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 976
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 977
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "utf-8"

    invoke-direct {v6, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 979
    sget-object v7, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v8, "read instream"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 982
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v7

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 984
    :cond_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 985
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 986
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 987
    sget-object v3, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strPing ==== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ttl"

    .line 988
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 990
    sget-object v2, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v3, "strPing \u5b57\u4e32\u4e2d\u6709 ttl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 995
    :cond_3
    sget-object v2, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v3, "Ping \u6c92\u56de\u61c9"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    .line 1006
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    move v1, v4

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1007
    throw v2

    .line 1006
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1011
    sget-object v2, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1017
    :cond_4
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v2, "\u7db2\u8def\u4e0d\u53ef\u7528"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 950
    :cond_5
    :goto_3
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v2, "\u7db2\u8def \u4e0d\u901a"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v1
.end method

.method private readServerData(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v1}, Ltw/edu/kmu/tool/SystemInfoTool;->getStringFromResources(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1083
    iget-object v3, p0, Ltw/edu/kmu/act/MainPageActivityV2;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    invoke-virtual {v3, v1, v2}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1086
    sget-object v2, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RenewBeaconData error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1090
    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1091
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1092
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private showMsg(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8a0a\u606f\u901a\u77e5"

    .line 220
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u78ba\u5b9a"

    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$2;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    .line 223
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkGCMMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 206
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGCMMsg functionIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tabIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " message is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "999"

    .line 208
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    invoke-direct {p0, p3}, Ltw/edu/kmu/act/MainPageActivityV2;->showMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkVersion(Ljava/lang/String;)V
    .locals 5

    .line 404
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVersion is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 408
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v0, p0}, Ltw/edu/kmu/act/MyApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "."

    const-string v4, ""

    .line 413
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "."

    const-string v4, ""

    .line 414
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    const/4 p1, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    .line 421
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Alert"

    goto :goto_1

    :cond_0
    const-string v0, "\u6700\u65b0\u7248\u672c"

    .line 422
    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isEnglish:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Please Update"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u76ee\u524d\u6709\u6700\u65b0\u7248\u672c,\u5efa\u8b70\u66f4\u65b0"

    goto :goto_2

    .line 423
    :goto_3
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Update"

    goto :goto_4

    :cond_2
    const-string v0, "\u66f4\u65b0"

    :goto_4
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$7;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    .line 424
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isEnglish:Z

    if-eqz v0, :cond_3

    const-string v0, "Cancel"

    goto :goto_5

    :cond_3
    const-string v0, "\u53d6\u6d88"

    :goto_5
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$6;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$6;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    .line 435
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    return-void
.end method

.method protected getLayoutId()I
    .locals 2

    .line 1218
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0084

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0086

    :goto_0
    return v0
.end method

.method public initBtn()V
    .locals 2

    const v0, 0x7f080051

    .line 619
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 621
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$9;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$9;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005b

    .line 631
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 633
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$10;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$10;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080060

    .line 643
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 645
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$11;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$11;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080061

    .line 673
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 675
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$12;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$12;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080064

    .line 694
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 696
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$13;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$13;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080065

    .line 712
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 714
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$14;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$14;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080068

    .line 729
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 731
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$15;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$15;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080053

    .line 744
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 746
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$16;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$16;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080066

    .line 757
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 759
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$17;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$17;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080052

    .line 768
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 770
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$18;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$18;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080067

    .line 791
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 793
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$19;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$19;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080054

    .line 807
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 809
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$20;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$20;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080055

    .line 835
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 837
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$21;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$21;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080056

    .line 863
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 865
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$22;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$22;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080057

    .line 876
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 878
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$23;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$23;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080058

    .line 889
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 891
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$24;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MainPageActivityV2$24;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initLogo()V
    .locals 2

    const v0, 0x7f08025b

    .line 314
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 315
    new-instance v1, Ltw/edu/kmu/act/MainPageActivityV2$5;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2$5;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initReceiver()V
    .locals 2

    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isNetReg:Z

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->mFilter:Landroid/content/IntentFilter;

    .line 454
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ltw/edu/kmu/receiver/NetworkReceiver;

    invoke-direct {v0}, Ltw/edu/kmu/receiver/NetworkReceiver;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->mReceiver:Ltw/edu/kmu/receiver/NetworkReceiver;

    .line 457
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->configFilter:Landroid/content/IntentFilter;

    .line 458
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->configFilter:Landroid/content/IntentFilter;

    const-string v1, "systemConfig"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->configReceiver:Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;

    .line 461
    iget-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isNetReg:Z

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->mReceiver:Ltw/edu/kmu/receiver/NetworkReceiver;

    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Ltw/edu/kmu/act/MainPageActivityV2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->configReceiver:Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;

    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->configFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Ltw/edu/kmu/act/MainPageActivityV2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isNetReg:Z

    :cond_0
    return-void
.end method

.method protected isUseCustomTitleBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    .line 107
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 109
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    const-string v1, "userId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    const-string v1, "account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltw/edu/kmu/act/MyApplication;->account:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 117
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00e3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080159

    .line 121
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->progressbar:Landroid/widget/ProgressBar;

    .line 123
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->setBtnLy()V

    .line 125
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->initBtn()V

    .line 127
    invoke-direct {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->checkPermissions()V

    const-string p1, "107001110"

    .line 129
    invoke-static {p1, p0}, Ltw/edu/kmu/tool/EncodeTool;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 130
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeString is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1225
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isNetReg:Z

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->mReceiver:Ltw/edu/kmu/receiver/NetworkReceiver;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1235
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->configReceiver:Ltw/edu/kmu/act/MainPageActivityV2$ConfigReceiver;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1236
    iput-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isNetReg:Z

    .line 1239
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1242
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 196
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->setIntent(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "functionIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    sget-object v1, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent functionIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tabIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "android"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->checkGCMMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1270
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPermissionsDenied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {p0, p2}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\u6b0a\u9650\u63d0\u793a"

    .line 273
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f0c0089

    .line 274
    invoke-direct {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u9700\u8981\u4f4d\u7f6e\u3001\u76f8\u6a5f\u3001\u5132\u5b58\u3001\u96fb\u8a71\u7b49\u6b0a\u9650\uff0c\u9ede\u64ca\u78ba\u8a8d\u5f8c\u5728\u65b0\u9801\u9762\u6ed1\u52d5\u5230\u6700\u4e0b\u65b9\uff0c\u5728\u61c9\u7528\u7a0b\u5f0f\u6b0a\u9650\u88e1\uff0c\u958b\u555f\u76f8\u95dc\u6b0a\u9650"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    new-instance v0, Ltw/edu/kmu/act/MainPageActivityV2$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/MainPageActivityV2$4;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    .line 275
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u78ba\u8a8d"

    new-instance v0, Ltw/edu/kmu/act/MainPageActivityV2$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/MainPageActivityV2$3;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    .line 281
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->finish()V

    :goto_0
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 305
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPermissionsGranted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->APP_PERMISSONS:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->appPermissonsParams:[Ljava/lang/String;

    array-length p1, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 307
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->start()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 253
    invoke-super {p0, p1, p2, p3}, Ltw/edu/kmu/act/BasicActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 255
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 257
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1249
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1251
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    .line 1252
    new-instance v0, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;Ltw/edu/kmu/act/MainPageActivityV2$1;)V

    const/4 v2, 0x0

    .line 1253
    new-array v3, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ltw/edu/kmu/act/MainPageActivityV2$RenewBeaconData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1255
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    const-string v4, "token"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ltw/edu/kmu/act/MyApplication;->token:Ljava/lang/String;

    const-string v0, ""

    .line 1259
    iget-object v3, p0, Ltw/edu/kmu/act/MainPageActivityV2;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    new-instance v0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;Ltw/edu/kmu/act/MainPageActivityV2$1;)V

    .line 1261
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1263
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iput-boolean v2, v0, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    :goto_0
    return-void
.end method

.method public ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1029
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 1030
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x1000

    .line 1032
    new-array p1, p1, [C

    .line 1033
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x40

    .line 1034
    new-array v3, v3, [Ljava/lang/String;

    const/16 v3, 0x8

    .line 1035
    new-array v3, v3, [Ljava/lang/String;

    .line 1036
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 1037
    invoke-virtual {v2, p1, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1039
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 1040
    aget-object p1, p1, v1

    const-string v2, "time="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1043
    aget-object v2, p1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1044
    :try_start_1
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v0

    .line 1047
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const-string p1, "ms"

    const-string v0, ""

    .line 1049
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBtnLy()V
    .locals 8

    .line 584
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltw/edu/kmu/act/MainPageActivityV2;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const/4 v2, 0x4

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_1
    if-gt v3, v2, :cond_1

    .line 596
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tableRow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 597
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 598
    iget-object v6, p0, Ltw/edu/kmu/act/MainPageActivityV2;->display:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 599
    iget-object v6, p0, Ltw/edu/kmu/act/MainPageActivityV2;->display:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0xa

    div-int/lit8 v6, v6, 0xa

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 600
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v2, 0x10

    if-gt v1, v2, :cond_2

    .line 607
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 608
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 609
    iget-object v4, p0, Ltw/edu/kmu/act/MainPageActivityV2;->display:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 610
    iget-object v4, p0, Ltw/edu/kmu/act/MainPageActivityV2;->display:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0xa

    div-int/lit8 v4, v4, 0xa

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 611
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public start()V
    .locals 4

    .line 139
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->initReceiver()V

    .line 141
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 144
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->bundle:Landroid/os/Bundle;

    .line 147
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->bundle:Landroid/os/Bundle;

    const-string v1, "functionIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2;->bundle:Landroid/os/Bundle;

    const-string v2, "tabIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltw/edu/kmu/act/MainPageActivityV2;->bundle:Landroid/os/Bundle;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ltw/edu/kmu/act/MainPageActivityV2;->checkGCMMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    new-instance v0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;Ltw/edu/kmu/act/MainPageActivityV2$1;)V

    const/4 v1, 0x1

    .line 158
    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    iget-boolean v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->isPad:Z

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->initLogo()V

    .line 166
    :cond_1
    invoke-direct {p0}, Ltw/edu/kmu/act/MainPageActivityV2;->getToken()V

    return-void
.end method

.method protected updateBg()V
    .locals 5

    .line 918
    sget-object v0, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    const-string v1, "updateBg start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Data"

    .line 922
    invoke-virtual {p0, v0, v1}, Ltw/edu/kmu/act/MainPageActivityV2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    .line 925
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    const-string v2, "dataVersion"

    const-string v3, "1.0.1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    iget-object v2, p0, Ltw/edu/kmu/act/MainPageActivityV2;->sharedData:Landroid/content/SharedPreferences;

    const-string v3, "updateComplete"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "1.0.1"

    .line 927
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const v0, 0x7f080175

    .line 929
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "main_page_bg.png"

    .line 931
    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->getBitmapFromStorage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 932
    sget-object v2, Ltw/edu/kmu/act/MainPageActivityV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBg bitmap is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 934
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
