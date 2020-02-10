.class public Ltw/edu/kmu/act/SplashActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/SplashActivity$getServerData;,
        Ltw/edu/kmu/act/SplashActivity$GetZipFile;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "SplashActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private final CLOSE_UPDATE_PROGRESSBAR:I

.field private dataId:Ljava/lang/String;

.field private dataurl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private imgStorage:Ljava/io/File;

.field private sdCard:Ljava/io/File;

.field private serverDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private sharedData:Landroid/content/SharedPreferences;

.field private srcPath:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 44
    iput v0, p0, Ltw/edu/kmu/act/SplashActivity;->CLOSE_PROGRESSBAR:I

    const/16 v0, 0x64

    .line 46
    iput v0, p0, Ltw/edu/kmu/act/SplashActivity;->CLOSE_UPDATE_PROGRESSBAR:I

    .line 74
    new-instance v0, Ltw/edu/kmu/act/SplashActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SplashActivity$1;-><init>(Ltw/edu/kmu/act/SplashActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/SplashActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ltw/edu/kmu/act/SplashActivity;->checkUpdateInfo()V

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SplashActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ltw/edu/kmu/act/SplashActivity;->switchActivity()V

    return-void
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/SplashActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ltw/edu/kmu/act/SplashActivity;->getZipFile()V

    return-void
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/SplashActivity;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Ltw/edu/kmu/act/SplashActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/SplashActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iput-object p1, p0, Ltw/edu/kmu/act/SplashActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/SplashActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    invoke-direct {p0}, Ltw/edu/kmu/act/SplashActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private checkUpdateInfo()V
    .locals 6

    .line 101
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->serverDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 104
    iget-object v2, p0, Ltw/edu/kmu/act/SplashActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v3, "dataVersion"

    const-string v4, "1.0.1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    sget-object v3, Ltw/edu/kmu/act/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUpdateInfo sharedData dataVersion is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v3, Ltw/edu/kmu/act/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUpdateInfo server dataVersion is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dataVersion"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "dataVersion"

    .line 107
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dataUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    const-string v3, "dataUrl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Ltw/edu/kmu/act/SplashActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dataVersion"

    const-string v4, "dataVersion"

    .line 109
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    sget-object v2, Ltw/edu/kmu/act/SplashActivity;->TAG:Ljava/lang/String;

    const-string v3, "go to getZipFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Ltw/edu/kmu/act/SplashActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    const-string v2, "dataUrl"

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ltw/edu/kmu/act/SplashActivity;->dataId:Ljava/lang/String;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://mbms.kmu.edu.tw:8080/KmuMan/data.serv?dataID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dataUrl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->dataurl:Ljava/lang/String;

    .line 115
    new-instance v0, Ltw/edu/kmu/act/SplashActivity$GetZipFile;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ltw/edu/kmu/act/SplashActivity$GetZipFile;-><init>(Ltw/edu/kmu/act/SplashActivity;Ltw/edu/kmu/act/SplashActivity$1;)V

    const/4 v2, 0x1

    .line 116
    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ltw/edu/kmu/act/SplashActivity$GetZipFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Ltw/edu/kmu/act/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "not to update and switchActivity "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Ltw/edu/kmu/act/SplashActivity;->switchActivity()V

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Ltw/edu/kmu/act/SplashActivity;->switchActivity()V

    :goto_0
    return-void
.end method

.method private getZipFile()V
    .locals 10

    .line 171
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->sdCard:Ljava/io/File;

    .line 172
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/SplashActivity;->sdCard:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/SplashActivity;->sdCard:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ikmu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->imgStorage:Ljava/io/File;

    .line 173
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->imgStorage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->imgStorage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 177
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ltw/edu/kmu/act/SplashActivity;->dataurl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 180
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ltw/edu/kmu/act/SplashActivity;->imgStorage:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltw/edu/kmu/act/SplashActivity;->dataId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    .line 184
    new-array v2, v2, [B

    const-wide/16 v4, 0x0

    .line 186
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v6, v0

    .line 188
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    int-to-long v8, v0

    add-long/2addr v4, v8

    const-wide/16 v8, 0x64

    mul-long v8, v8, v4

    .line 191
    div-long/2addr v8, v6

    const/4 v8, 0x0

    .line 192
    invoke-virtual {v3, v2, v8, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 196
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 199
    sget-object v1, Ltw/edu/kmu/act/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZipFile error is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "os"

    const-string v3, "android"

    .line 303
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v2, p0, Ltw/edu/kmu/act/SplashActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/SplashActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 306
    sget-object v2, Ltw/edu/kmu/act/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Ltw/edu/kmu/act/SplashActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private switchActivity()V
    .locals 4

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltw/edu/kmu/act/SplashActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SplashActivity$2;-><init>(Ltw/edu/kmu/act/SplashActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00d3

    return v0
.end method

.method protected isUseCustomTitleBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SplashActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f080028

    .line 58
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v0, p0}, Ltw/edu/kmu/act/MyApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-direct {p0}, Ltw/edu/kmu/act/SplashActivity;->switchActivity()V

    return-void
.end method
