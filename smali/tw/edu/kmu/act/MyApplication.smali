.class public Ltw/edu/kmu/act/MyApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "MyApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyApplication"


# instance fields
.field public AccountPassWord:Ljava/lang/String;

.field public UserID:Ljava/lang/String;

.field public UserPassWord:Ljava/lang/String;

.field public account:Ljava/lang/String;

.field public actSeq:Ljava/lang/String;

.field public clsID:Ljava/lang/String;

.field public clsName:Ljava/lang/String;

.field public dataVersion:Ljava/lang/String;

.field public depName:Ljava/lang/String;

.field public depNo:Ljava/lang/String;

.field public isEnableGCM:Z

.field public isLogin:Z

.field public isSeatLogin:Z

.field public regId:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public systemInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public updateStatus:Z

.field public userCtid:Ljava/lang/String;

.field public userEmail:Ljava/lang/String;

.field public userInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public userName:Ljava/lang/String;

.field public userType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    const-string v1, ""

    .line 32
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->UserPassWord:Ljava/lang/String;

    const-string v1, ""

    .line 34
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userCtid:Ljava/lang/String;

    const-string v1, ""

    .line 36
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->clsID:Ljava/lang/String;

    const-string v1, ""

    .line 38
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->depName:Ljava/lang/String;

    const-string v1, ""

    .line 40
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    const-string v1, ""

    .line 42
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userEmail:Ljava/lang/String;

    const-string v1, ""

    .line 44
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->depNo:Ljava/lang/String;

    const-string v1, ""

    .line 46
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->clsName:Ljava/lang/String;

    const-string v1, ""

    .line 48
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->type:Ljava/lang/String;

    const-string v1, ""

    .line 50
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    const-string v1, ""

    .line 52
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v1, ""

    .line 54
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    const-string v1, ""

    .line 56
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->account:Ljava/lang/String;

    const-string v1, ""

    .line 58
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->AccountPassWord:Ljava/lang/String;

    .line 60
    iput-boolean v0, p0, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Ltw/edu/kmu/act/MyApplication;->isEnableGCM:Z

    .line 64
    iput-boolean v0, p0, Ltw/edu/kmu/act/MyApplication;->updateStatus:Z

    const-string v0, "1.0.0"

    .line 70
    iput-object v0, p0, Ltw/edu/kmu/act/MyApplication;->dataVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, ""

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, ""

    .line 125
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 126
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 80
    sget-object v0, Ltw/edu/kmu/act/MyApplication;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    const-string v0, "Data"

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, v1}, Ltw/edu/kmu/act/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "userId"

    const-string v3, ""

    .line 83
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    const-string v2, "userType"

    const-string v3, ""

    .line 84
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v2, "userName"

    const-string v3, ""

    .line 85
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    const-string v2, "isLogin"

    .line 86
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    const-string v2, "actSeq"

    const-string v3, ""

    .line 87
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;

    .line 89
    sget-object v2, Ltw/edu/kmu/act/MyApplication;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sharedData isLogin is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "isLogin"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v1, Ltw/edu/kmu/act/MyApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharedData userId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "userId"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v1, Ltw/edu/kmu/act/MyApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharedData userName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "userName"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v1, Ltw/edu/kmu/act/MyApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharedData userType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "userType"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
