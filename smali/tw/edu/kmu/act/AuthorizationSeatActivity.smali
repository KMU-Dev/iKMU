.class public Ltw/edu/kmu/act/AuthorizationSeatActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "AuthorizationSeatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthorizationSeatActivity"


# instance fields
.field private account:Ljava/lang/String;

.field private btn:Landroid/widget/Button;

.field private edit1:Landroid/widget/EditText;

.field private edit2:Landroid/widget/EditText;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private password:Ljava/lang/String;

.field private serverDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private sharedData:Landroid/content/SharedPreferences;

.field private title:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    .line 317
    new-instance v0, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity$4;-><init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->btn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->updateData()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit2:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit1:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/AuthorizationSeatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->account:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/AuthorizationSeatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Ltw/edu/kmu/act/AuthorizationSeatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    :try_start_0
    sget-object v1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->account:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " password is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/DeviceAuth.aspx?account=app&password=kmubooking&restype=json"

    .line 239
    iput-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->url:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "resdata"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "sid"

    .line 243
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iput-object v0, v2, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    .line 246
    sget-object v2, Ltw/edu/kmu/act/AuthorizationSeatActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "http://sbms.lib.kmu.edu.tw/booking/APPAPI/UserAuth.aspx"

    .line 248
    iput-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->url:Ljava/lang/String;

    .line 249
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "sid"

    .line 250
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    .line 251
    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->account:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 252
    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->password:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "restype"

    const-string v3, "json"

    .line 253
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ltw/edu/kmu/resource/ServerResource;->readSeatWSData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 258
    :catch_1
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private setuserInfo(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 176
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 184
    sget-object v1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setuserInfo erro is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private updateData()V
    .locals 6

    .line 267
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    const-string v0, "1"

    iget-object v4, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "rescode"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->btn:Landroid/widget/Button;

    iget-object v4, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v5, "en"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Logout"

    goto :goto_0

    :cond_0
    const-string v4, "\u767b\u51fa"

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iput-boolean v2, v0, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    .line 272
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->account:Ljava/lang/String;

    iput-object v4, v0, Ltw/edu/kmu/act/MyApplication;->account:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->password:Ljava/lang/String;

    iput-object v4, v0, Ltw/edu/kmu/act/MyApplication;->AccountPassWord:Ljava/lang/String;

    .line 274
    sget-object v0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->account:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "resdata"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->setuserInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, v0, Ltw/edu/kmu/act/MyApplication;->userInfo:Ljava/util/HashMap;

    .line 277
    sget-object v0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "globalVariable.userInfo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->userInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "account"

    .line 280
    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->account:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Login Successful"

    goto :goto_1

    :cond_1
    const-string v0, "\u5df2\u767b\u5165"

    :goto_1
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 286
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ltw/edu/kmu/act/AuthorizationSeatActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity$3;-><init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 304
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Login error"

    goto :goto_2

    :cond_3
    const-string v0, "\u5e33\u865f\u6216\u5bc6\u78bc\u6709\u8aa4,\u7121\u6cd5\u767b\u5165"

    :goto_2
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 306
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a002e

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    sget-object v0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Account"

    goto :goto_0

    :cond_0
    const-string p1, "\u5e33\u865f"

    :goto_0
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0062

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->url:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f0801c7

    .line 64
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->title:Landroid/widget/TextView;

    const v1, 0x7f0800d1

    .line 66
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit1:Landroid/widget/EditText;

    const v1, 0x7f0800d2

    .line 67
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit2:Landroid/widget/EditText;

    .line 69
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit1:Landroid/widget/EditText;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "KMU E-learning Account"

    goto :goto_1

    :cond_1
    const-string v2, "\u8acb\u8f38\u5165\u5e33\u865f(\u5b78\u865f\u6216\u8077\u865f)"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit2:Landroid/widget/EditText;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "KMU E-learning Password"

    goto :goto_2

    :cond_2
    const-string v2, "\u8acb\u8f38\u5165\u5bc6\u78bc(\u9ad8\u91ab\u6578\u4f4d\u5b78\u7fd2\u7cfb\u7d71\u5bc6\u78bc)"

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit1:Landroid/widget/EditText;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->account:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    goto :goto_3

    :cond_3
    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->account:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit2:Landroid/widget/EditText;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v2, v2, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->AccountPassWord:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v2, ""

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 81
    sget-object v1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "globalVariable.isLogin is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v3, v3, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f08004f

    .line 83
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->btn:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v1, v1, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    if-eqz v1, :cond_6

    .line 86
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->btn:Landroid/widget/Button;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Logout"

    goto :goto_5

    :cond_5
    const-string v2, "\u767b\u51fa"

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit1:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->edit2:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_7

    .line 92
    :cond_6
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->btn:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Login"

    goto :goto_6

    :cond_7
    const-string v1, "\u767b\u5165"

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_7
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity;->btn:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;-><init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 151
    new-instance v0, Ltw/edu/kmu/act/AuthorizationSeatActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/AuthorizationSeatActivity$2;-><init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget-object p1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
