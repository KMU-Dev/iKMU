.class Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;
.super Landroid/os/AsyncTask;
.source "IRSTAReplyDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRSTAReplyDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendReplyData"
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
.field private content:Ljava/lang/String;

.field private isPublic:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 181
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 182
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 183
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 184
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->content:Ljava/lang/String;

    const-string p1, ""

    .line 185
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->isPublic:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;Ltw/edu/kmu/act/IRSTAReplyDetailActivity$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;-><init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 178
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 200
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "pid"

    .line 201
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$400(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    .line 202
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->content:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "public"

    .line 203
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->isPublic:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imgbase64"

    .line 204
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$500(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$700(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->resultString:Ljava/lang/String;

    .line 208
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 209
    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 211
    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->result:Ljava/lang/String;

    .line 212
    invoke-static {}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$600()Ljava/lang/String;

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

    .line 178
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 219
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 220
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 222
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->returnCode:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->isEnglish:Z

    const-string v0, "\u56de\u8986\u6210\u529f"

    .line 224
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "OK"

    goto :goto_0

    :cond_0
    const-string v0, "\u78ba\u5b9a"

    :goto_0
    new-instance v1, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData$1;-><init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;)V

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 190
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 191
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 192
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$200(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->content:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->this$0:Ltw/edu/kmu/act/IRSTAReplyDetailActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->access$300(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;->isPublic:Ljava/lang/String;

    return-void
.end method
