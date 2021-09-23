.class Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;
.super Landroid/os/AsyncTask;
.source "MyKMUActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MyKMUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPingCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 1

    .line 1516
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1519
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->result:Ljava/lang/String;

    const-string p1, ""

    .line 1520
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1521
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->returnCode:Ljava/lang/String;

    .line 1522
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V
    .locals 0

    .line 1516
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1516
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1534
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/MyKMUActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1535
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1536
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 1539
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-string v0, "mbms.kmu.edu.tw"

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/MyKMUActivity;->ping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ms"

    .line 1540
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ms"

    const-string v1, ""

    .line 1541
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1542
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1543
    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/MyKMUActivity;->access$2100(Ltw/edu/kmu/act/MyKMUActivity;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 1544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "quid"

    .line 1545
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    const-string v1, "3"

    .line 1546
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "stuno"

    .line 1547
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/MyKMUActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->resultString:Ljava/lang/String;

    .line 1550
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->returnCode:Ljava/lang/String;

    :cond_0
    const-string p1, "true"

    .line 1552
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 1555
    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->result:Ljava/lang/String;

    .line 1556
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1516
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 1563
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1526
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
