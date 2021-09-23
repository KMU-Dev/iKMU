.class Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;
.super Landroid/os/AsyncTask;
.source "MainPageActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MainPageActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckToken"
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

.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 1

    .line 1156
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1159
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->result:Ljava/lang/String;

    const-string p1, ""

    .line 1160
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1161
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->returnCode:Ljava/lang/String;

    .line 1163
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {p1}, Ltw/edu/kmu/act/MainPageActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;Ltw/edu/kmu/act/MainPageActivityV2$1;)V
    .locals 0

    .line 1156
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;-><init>(Ltw/edu/kmu/act/MainPageActivityV2;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1156
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1175
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1176
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    iget-object v0, v0, Ltw/edu/kmu/act/MainPageActivityV2;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->resultString:Ljava/lang/String;

    .line 1178
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 1180
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 1182
    iput-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->result:Ljava/lang/String;

    .line 1183
    invoke-static {}, Ltw/edu/kmu/act/MainPageActivityV2;->access$300()Ljava/lang/String;

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

    .line 1156
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 1190
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1191
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    iget-object p1, p1, Ltw/edu/kmu/act/MainPageActivityV2;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1192
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->returnCode:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1193
    invoke-static {}, Ltw/edu/kmu/act/MainPageActivityV2;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "token\u6709\u6548"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {p1}, Ltw/edu/kmu/act/MainPageActivityV2;->access$100(Ltw/edu/kmu/act/MainPageActivityV2;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    goto :goto_0

    .line 1196
    :cond_0
    invoke-static {}, Ltw/edu/kmu/act/MainPageActivityV2;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "token\u7121\u6548"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {p1}, Ltw/edu/kmu/act/MainPageActivityV2;->access$100(Ltw/edu/kmu/act/MainPageActivityV2;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    .line 1198
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {p1}, Ltw/edu/kmu/act/MainPageActivityV2;->access$100(Ltw/edu/kmu/act/MainPageActivityV2;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Ltw/edu/kmu/act/MyApplication;->token:Ljava/lang/String;

    .line 1199
    iget-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {p1}, Ltw/edu/kmu/act/MainPageActivityV2;->access$800(Ltw/edu/kmu/act/MainPageActivityV2;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "token"

    .line 1201
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1202
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1167
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1168
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$CheckToken;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    iget-object v0, v0, Ltw/edu/kmu/act/MainPageActivityV2;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
