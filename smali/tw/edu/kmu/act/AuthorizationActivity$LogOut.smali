.class Ltw/edu/kmu/act/AuthorizationActivity$LogOut;
.super Landroid/os/AsyncTask;
.source "AuthorizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/AuthorizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogOut"
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

.field final synthetic this$0:Ltw/edu/kmu/act/AuthorizationActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/AuthorizationActivity;)V
    .locals 1

    .line 182
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 185
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->result:Ljava/lang/String;

    const-string p1, ""

    .line 186
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 187
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->returnCode:Ljava/lang/String;

    .line 189
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/AuthorizationActivity;Ltw/edu/kmu/act/AuthorizationActivity$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;-><init>(Ltw/edu/kmu/act/AuthorizationActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 201
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 202
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/AuthorizationActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->resultString:Ljava/lang/String;

    .line 204
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 206
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 208
    iput-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->result:Ljava/lang/String;

    .line 209
    invoke-static {}, Ltw/edu/kmu/act/AuthorizationActivity;->access$700()Ljava/lang/String;

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

    .line 182
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 217
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/AuthorizationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 218
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->returnCode:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$800(Ltw/edu/kmu/act/AuthorizationActivity;)V

    goto :goto_1

    .line 221
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "Logout Fail"

    goto :goto_0

    :cond_1
    const-string v0, "\u767b\u51fa\u5931\u6557"

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 224
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 194
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/AuthorizationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
