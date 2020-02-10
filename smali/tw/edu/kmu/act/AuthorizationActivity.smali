.class public Ltw/edu/kmu/act/AuthorizationActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "AuthorizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/AuthorizationActivity$ReadDataFromServer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthorizationActivity"

.field private static final SMALI_TAG:Ljava/lang/String; = "Smali: AuthorizationActivity"


# instance fields
.field private btn:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private edit1:Landroid/widget/EditText;

.field private edit2:Landroid/widget/EditText;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private password:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private sharedData:Landroid/content/SharedPreferences;

.field private title:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    .line 322
    new-instance v0, Ltw/edu/kmu/act/AuthorizationActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/AuthorizationActivity$4;-><init>(Ltw/edu/kmu/act/AuthorizationActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/AuthorizationActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/AuthorizationActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/AuthorizationActivity;->readServerDataList()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/os/Bundle;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/AuthorizationActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ltw/edu/kmu/act/AuthorizationActivity;->updateData()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->btn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit2:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->sharedData:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit1:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/AuthorizationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->userId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/AuthorizationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Ltw/edu/kmu/act/AuthorizationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->resultString:Ljava/lang/String;

    return-object p1
.end method

.method private readServerDataList()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 192
    invoke-virtual {p0}, Ltw/edu/kmu/act/AuthorizationActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 201
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    sget-object v2, Ltw/edu/kmu/act/AuthorizationActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "globalVariable.regId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, v4, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "os"

    const-string v3, "android"

    .line 205
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    .line 206
    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "device"

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceid"

    .line 211
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "id"

    .line 212
    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity;->userId:Ljava/lang/String;

    invoke-static {v3}, Ltw/edu/kmu/tool/EncodeTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pw"

    .line 213
    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity;->password:Ljava/lang/String;

    invoke-static {v3}, Ltw/edu/kmu/tool/EncodeTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lang"

    .line 214
    iget-boolean v3, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    goto :goto_0

    :cond_2
    const-string v3, "0"

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity;->url:Ljava/lang/String;

    sget-object v4, Ltw/edu/kmu/act/AuthorizationActivity;->SMALI_TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->resultCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v1

    .line 219
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-object v0
.end method

.method private updateData()V
    .locals 6

    const-string v0, "true"

    .line 231
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->btn:Landroid/widget/Button;

    iget-boolean v4, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v4, :cond_0

    const-string v4, "Logout"

    goto :goto_0

    :cond_0
    const-string v4, "\u767b\u51fa"

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iput-boolean v3, v0, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    .line 235
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, p0, Ltw/edu/kmu/act/AuthorizationActivity;->userId:Ljava/lang/String;

    iput-object v4, v0, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, p0, Ltw/edu/kmu/act/AuthorizationActivity;->password:Ljava/lang/String;

    iput-object v4, v0, Ltw/edu/kmu/act/MyApplication;->UserPassWord:Ljava/lang/String;

    .line 237
    sget-object v0, Ltw/edu/kmu/act/AuthorizationActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserID is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->resultString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "items"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "userType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->resultString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "items"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "userName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    .line 242

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->resultString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "items"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "actSeq"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ltw/edu/kmu/act/AuthorizationActivity;->SMALI_TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, v0, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 247
    :goto_1
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "\u6d3b\u52d5\u5c08\u5340"

    .line 248
    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "actSeq"

    .line 249
    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v4, "userType"

    .line 251
    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "userName"

    .line 252
    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "userId"

    .line 253
    iget-object v5, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v5, v5, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "isLogin"

    .line 254
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    iget-boolean v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Login Successful"

    goto :goto_2

    :cond_2
    const-string v0, "\u5df2\u767b\u5165"

    :goto_2
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 268
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u59d3\u540d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u8eab\u4efd\u5225:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-boolean v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_3
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->bundle:Landroid/os/Bundle;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_4

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ltw/edu/kmu/act/AuthorizationActivity$2;

    invoke-direct {v3, p0}, Ltw/edu/kmu/act/AuthorizationActivity$2;-><init>(Ltw/edu/kmu/act/AuthorizationActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 297
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ltw/edu/kmu/act/AuthorizationActivity$3;

    invoke-direct {v3, p0}, Ltw/edu/kmu/act/AuthorizationActivity$3;-><init>(Ltw/edu/kmu/act/AuthorizationActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 309
    :cond_5
    iget-boolean v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v0, :cond_6

    const-string v0, "Login error"

    goto :goto_3

    :cond_6
    const-string v0, "\u5e33\u865f\u6216\u5bc6\u78bc\u6709\u8aa4,\u7121\u6cd5\u767b\u5165"

    :goto_3
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 310
    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 311
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit1:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit2:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_4
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a002d

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    sget-object v0, Ltw/edu/kmu/act/AuthorizationActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Ltw/edu/kmu/act/AuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->bundle:Landroid/os/Bundle;

    .line 63
    iget-boolean p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz p1, :cond_0

    const-string p1, "Account"

    goto :goto_0

    :cond_0
    const-string p1, "\u5e33\u865f"

    :goto_0
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Ltw/edu/kmu/act/AuthorizationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0062

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->url:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Ltw/edu/kmu/act/AuthorizationActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/AuthorizationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f0801c7

    .line 70
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->title:Landroid/widget/TextView;

    const p1, 0x7f0800d1

    .line 72
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit1:Landroid/widget/EditText;

    const p1, 0x7f0800d2

    .line 73
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit2:Landroid/widget/EditText;

    .line 77
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit1:Landroid/widget/EditText;

    iget-boolean v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "Please enter Account"

    goto :goto_1

    :cond_1
    const-string v1, "\u8acb\u8f38\u5165\u5e33\u865f"

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit2:Landroid/widget/EditText;

    iget-boolean v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v1, :cond_2

    const-string v1, "Please enter Password"

    goto :goto_2

    :cond_2
    const-string v1, "\u8acb\u8f38\u5165\u5bc6\u78bc"

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit1:Landroid/widget/EditText;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    goto :goto_3

    :cond_3
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit2:Landroid/widget/EditText;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v1, v1, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserPassWord:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v1, ""

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 89
    sget-object p1, Ltw/edu/kmu/act/AuthorizationActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalVariable.isLogin is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v2, v2, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f08004f

    .line 91
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->btn:Landroid/widget/Button;

    .line 92
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean p1, p1, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-eqz p1, :cond_6

    .line 94
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->btn:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v1, :cond_5

    const-string v1, "Logout"

    goto :goto_5

    :cond_5
    const-string v1, "\u767b\u51fa"

    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit1:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 96
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->edit2:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 97
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u59d3\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u8eab\u4efd\u5225:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-boolean p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz p1, :cond_8

    .line 99
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 102
    :cond_6
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->title:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->btn:Landroid/widget/Button;

    iget-boolean v0, p0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v0, :cond_7

    const-string v0, "Login"

    goto :goto_6

    :cond_7
    const-string v0, "\u767b\u5165"

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_8
    :goto_7
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity;->btn:Landroid/widget/Button;

    new-instance v0, Ltw/edu/kmu/act/AuthorizationActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/AuthorizationActivity$1;-><init>(Ltw/edu/kmu/act/AuthorizationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget-object p1, Ltw/edu/kmu/act/AuthorizationActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
