.class Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;
.super Landroid/os/AsyncTask;
.source "IRSTAStuReplyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRSTAStuReplyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetStuReplyData"
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

.field final synthetic this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 111
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 112
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 113
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->returnCode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;Ltw/edu/kmu/act/IRSTAStuReplyListActivity$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;-><init>(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 125
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "qutype"

    .line 126
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->access$200(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "qutype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "questionId"

    .line 127
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->access$200(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "questionId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->access$300(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->resultString:Ljava/lang/String;

    .line 131
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->returnCode:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->parseList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->access$402(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string p1, "true"

    .line 133
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 135
    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->result:Ljava/lang/String;

    .line 136
    invoke-static {}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->access$500()Ljava/lang/String;

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

    .line 108
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 144
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->access$600(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;)V

    .line 146
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->access$700(Ltw/edu/kmu/act/IRSTAStuReplyListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 118
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity$GetStuReplyData;->this$0:Ltw/edu/kmu/act/IRSTAStuReplyListActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSTAStuReplyListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
