.class Ltw/edu/kmu/act/TBLActivity$GetServerTime;
.super Landroid/os/AsyncTask;
.source "TBLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLActivity;
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

.field final synthetic this$0:Ltw/edu/kmu/act/TBLActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/TBLActivity;)V
    .locals 1

    .line 1614
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1616
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1617
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 1618
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->reason:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->ereason:Ljava/lang/String;

    .line 1619
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V
    .locals 0

    .line 1614
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLActivity$GetServerTime;-><init>(Ltw/edu/kmu/act/TBLActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1614
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1630
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1631
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->resultString:Ljava/lang/String;

    .line 1632
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->returnCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1639
    invoke-static {}, Ltw/edu/kmu/act/TBLActivity;->access$800()Ljava/lang/String;

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

    .line 1614
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 1646
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "true"

    .line 1648
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1650
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->resultString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLActivity;->access$1902(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1651
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLActivity;->access$1900(Ltw/edu/kmu/act/TBLActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLActivity;->dateDiff4Phone(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Ltw/edu/kmu/act/TBLActivity;->access$2002(Ltw/edu/kmu/act/TBLActivity;J)J

    .line 1652
    invoke-static {}, Ltw/edu/kmu/act/TBLActivity;->access$800()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneTimeDiff is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLActivity;->access$2000(Ltw/edu/kmu/act/TBLActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLActivity;->access$2100(Ltw/edu/kmu/act/TBLActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1656
    invoke-static {}, Ltw/edu/kmu/act/TBLActivity;->access$800()Ljava/lang/String;

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

    .line 1659
    :cond_0
    :goto_0
    new-instance p1, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V

    const/4 v0, 0x1

    .line 1660
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1623
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
