.class Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;
.super Landroid/os/AsyncTask;
.source "TBLGRATActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLGRATActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendBlockTp"
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

.field private rtnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/TBLGRATActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;)V
    .locals 1

    .line 1892
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1894
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1895
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 1896
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->reason:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->ereason:Ljava/lang/String;

    .line 1897
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLGRATActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V
    .locals 0

    .line 1892
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1892
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1909
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "stuno"

    .line 1910
    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/TBLGRATActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "quid"

    .line 1911
    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLGRATActivity;->access$1200(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "questionId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLGRATActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->resultString:Ljava/lang/String;

    .line 1913
    invoke-static {}, Ltw/edu/kmu/act/TBLGRATActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendBlockTp doInBackground resultString is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->returnCode:Ljava/lang/String;

    .line 1915
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rtnCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->rtnCode:Ljava/lang/String;

    .line 1916
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->reason:Ljava/lang/String;

    .line 1917
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ereason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->ereason:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1922
    invoke-static {}, Ltw/edu/kmu/act/TBLGRATActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBlockTp Exception:"

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

    .line 1892
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 1929
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1930
    invoke-static {}, Ltw/edu/kmu/act/TBLGRATActivity;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SendBlockTp onPostExecute start:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "true"

    .line 1932
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1953
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLGRATActivity;->finish()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1901
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1902
    invoke-static {}, Ltw/edu/kmu/act/TBLGRATActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SendBlockTp onPreExecute start:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
