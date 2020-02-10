.class Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;
.super Landroid/os/AsyncTask;
.source "EvlTACourseDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/EvlTACourseDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCourseDetailData"
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

.field final synthetic this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)V
    .locals 1

    .line 380
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 382
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 383
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 384
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->returnCode:Ljava/lang/String;

    .line 385
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ltw/edu/kmu/act/EvlTACourseDetailActivity$1;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;-><init>(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 380
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 397
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "teafno"

    .line 398
    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$1000(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "yearsem"

    .line 399
    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$1100(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "semCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seqno"

    .line 400
    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$1100(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "seqno"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$1200(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->resultString:Ljava/lang/String;

    .line 402
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 403
    iput-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->result:Ljava/lang/String;

    .line 404
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->resultString:Ljava/lang/String;

    const-string v2, "teafList"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$1302(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 405
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->resultString:Ljava/lang/String;

    const-string v2, "contentList"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$1402(Ltw/edu/kmu/act/EvlTACourseDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 407
    iput-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->result:Ljava/lang/String;

    .line 408
    invoke-static {}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$200()Ljava/lang/String;

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

    .line 380
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 415
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 416
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$900(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 417
    invoke-static {}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$1400(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "teafList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$1300(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p1, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$700(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 389
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 390
    iget-object v0, p0, Ltw/edu/kmu/act/EvlTACourseDetailActivity$GetCourseDetailData;->this$0:Ltw/edu/kmu/act/EvlTACourseDetailActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlTACourseDetailActivity;->access$900(Ltw/edu/kmu/act/EvlTACourseDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
