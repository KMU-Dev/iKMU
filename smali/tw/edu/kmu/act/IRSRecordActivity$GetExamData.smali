.class Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;
.super Landroid/os/AsyncTask;
.source "IRSRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRSRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetExamData"
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

.field final synthetic this$0:Ltw/edu/kmu/act/IRSRecordActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRSRecordActivity;)V
    .locals 1

    .line 677
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 679
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 680
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 681
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->returnCode:Ljava/lang/String;

    .line 682
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRSRecordActivity;Ltw/edu/kmu/act/IRSRecordActivity$1;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;-><init>(Ltw/edu/kmu/act/IRSRecordActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 677
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 694
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "stuno"

    .line 695
    iget-object v2, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1400(Ltw/edu/kmu/act/IRSRecordActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v2

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quid"

    const/4 v2, 0x0

    .line 696
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1500(Ltw/edu/kmu/act/IRSRecordActivity;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object p1

    iget-object v1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->resultString:Ljava/lang/String;

    .line 698
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 699
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->result:Ljava/lang/String;

    .line 700
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRSRecordActivity;->parseExamMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$2102(Ltw/edu/kmu/act/IRSRecordActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 701
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->resultString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "items"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subquList"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/IRSRecordActivity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$2202(Ltw/edu/kmu/act/IRSRecordActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 702
    invoke-static {}, Ltw/edu/kmu/act/IRSRecordActivity;->access$800()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "examDataList size is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$2200(Ltw/edu/kmu/act/IRSRecordActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {}, Ltw/edu/kmu/act/IRSRecordActivity;->access$800()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "examMap is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$2100(Ltw/edu/kmu/act/IRSRecordActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 706
    iput-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->result:Ljava/lang/String;

    .line 707
    invoke-static {}, Ltw/edu/kmu/act/IRSRecordActivity;->access$800()Ljava/lang/String;

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

    .line 677
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 714
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 715
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1300(Ltw/edu/kmu/act/IRSRecordActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 717
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->show99View()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 719
    invoke-static {}, Ltw/edu/kmu/act/IRSRecordActivity;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show99View Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 686
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 687
    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetExamData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1300(Ltw/edu/kmu/act/IRSRecordActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
