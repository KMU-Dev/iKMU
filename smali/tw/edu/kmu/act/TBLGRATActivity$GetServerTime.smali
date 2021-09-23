.class Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;
.super Landroid/os/AsyncTask;
.source "TBLGRATActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLGRATActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetServerTime"
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
.field private ereason:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/TBLGRATActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;)V
    .locals 1

    .line 1840
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1842
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1843
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 1844
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->reason:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->ereason:Ljava/lang/String;

    .line 1845
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLGRATActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c004b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V
    .locals 0

    .line 1840
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1840
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1856
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1857
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLGRATActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->resultString:Ljava/lang/String;

    .line 1858
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->returnCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1865
    invoke-static {}, Ltw/edu/kmu/act/TBLGRATActivity;->access$900()Ljava/lang/String;

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

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1840
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 1872
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "true"

    .line 1874
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1876
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->resultString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLGRATActivity;->access$2102(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1877
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLGRATActivity;->access$2100(Ltw/edu/kmu/act/TBLGRATActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLGRATActivity;->dateDiff4Phone(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Ltw/edu/kmu/act/TBLGRATActivity;->access$2202(Ltw/edu/kmu/act/TBLGRATActivity;J)J

    .line 1878
    invoke-static {}, Ltw/edu/kmu/act/TBLGRATActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneTimeDiff is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLGRATActivity;->access$2200(Ltw/edu/kmu/act/TBLGRATActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLGRATActivity;->access$2300(Ltw/edu/kmu/act/TBLGRATActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1882
    invoke-static {}, Ltw/edu/kmu/act/TBLGRATActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse Qu Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_0
    :goto_0
    new-instance p1, Ltw/edu/kmu/act/TBLGRATActivity$GetGRATFirstQu;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltw/edu/kmu/act/TBLGRATActivity$GetGRATFirstQu;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V

    const/4 v0, 0x1

    .line 1886
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/TBLGRATActivity$GetGRATFirstQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1849
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
