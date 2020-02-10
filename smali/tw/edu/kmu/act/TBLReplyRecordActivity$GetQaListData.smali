.class Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;
.super Landroid/os/AsyncTask;
.source "TBLReplyRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/TBLReplyRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetQaListData"
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

.field final synthetic this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/TBLReplyRecordActivity;)V
    .locals 1

    .line 149
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 152
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 153
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 154
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->returnCode:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c005e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/TBLReplyRecordActivity;Ltw/edu/kmu/act/TBLReplyRecordActivity$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;-><init>(Ltw/edu/kmu/act/TBLReplyRecordActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 168
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "stuno"

    .line 172
    iget-object v1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/TBLReplyRecordActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->access$300(Ltw/edu/kmu/act/TBLReplyRecordActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cono"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "cono"

    .line 175
    iget-object v1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->access$300(Ltw/edu/kmu/act/TBLReplyRecordActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cono"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->url:Ljava/lang/String;

    const-string v0, "actSeq"

    .line 178
    iget-object v1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/TBLReplyRecordActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLReplyRecordActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->resultString:Ljava/lang/String;

    .line 181
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 182
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->result:Ljava/lang/String;

    .line 183
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->access$402(Ltw/edu/kmu/act/TBLReplyRecordActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 185
    iput-object v0, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->result:Ljava/lang/String;

    .line 186
    invoke-static {}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->access$500()Ljava/lang/String;

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

    :goto_1
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLReplyRecordActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 195
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->access$100(Ltw/edu/kmu/act/TBLReplyRecordActivity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 161
    iget-object v0, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$GetQaListData;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/TBLReplyRecordActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
