.class Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;
.super Landroid/os/AsyncTask;
.source "IRSRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRSRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAskData"
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

    .line 633
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 635
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 636
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 637
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->returnCode:Ljava/lang/String;

    .line 638
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0027

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRSRecordActivity;Ltw/edu/kmu/act/IRSRecordActivity$1;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;-><init>(Ltw/edu/kmu/act/IRSRecordActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 633
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 650
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "stuno"

    .line 655
    iget-object v1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1400(Ltw/edu/kmu/act/IRSRecordActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cono"

    .line 656
    iget-object v1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$100(Ltw/edu/kmu/act/IRSRecordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1500(Ltw/edu/kmu/act/IRSRecordActivity;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->resultString:Ljava/lang/String;

    .line 658
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 659
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->result:Ljava/lang/String;

    .line 660
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->resultString:Ljava/lang/String;

    const-string v2, "items"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/IRSRecordActivity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$2002(Ltw/edu/kmu/act/IRSRecordActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 662
    iput-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->result:Ljava/lang/String;

    .line 663
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

    .line 633
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 670
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 671
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1300(Ltw/edu/kmu/act/IRSRecordActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 672
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1900(Ltw/edu/kmu/act/IRSRecordActivity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 642
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 643
    iget-object v0, p0, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSRecordActivity;->access$1300(Ltw/edu/kmu/act/IRSRecordActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
