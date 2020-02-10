.class Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;
.super Landroid/os/AsyncTask;
.source "MainPageActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MainPageActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private newVersion:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 0

    .line 360
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;Ltw/edu/kmu/act/MainPageActivityV2$1;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 360
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 375
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    iget-object p1, p1, Ltw/edu/kmu/act/MainPageActivityV2;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->url:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0, v1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 376
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "false"

    const-string v1, "result"

    .line 377
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "items"

    .line 378
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->newVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 381
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 360
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 388
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 389
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->newVersion:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->newVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/MainPageActivityV2;->checkVersion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 368
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 369
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MainPageActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$VersionChecker;->url:Ljava/lang/String;

    return-void
.end method
