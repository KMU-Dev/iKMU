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

.field public detailList:Ljava/util/ArrayList;
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

.field public isEnableGCM:Z

.field public isLoginV2:Z

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

.field public token:Ljava/lang/String;

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

    .line 25
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    const-string v1, ""

    .line 37
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->UserPassWord:Ljava/lang/String;

    const-string v1, ""

    .line 39
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userCtid:Ljava/lang/String;

    const-string v1, ""

    .line 41
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->clsID:Ljava/lang/String;

    const-string v1, ""

    .line 43
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->depName:Ljava/lang/String;

    const-string v1, ""

    .line 45
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    const-string v1, ""

    .line 47
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->token:Ljava/lang/String;

    const-string v1, ""

    .line 49
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userEmail:Ljava/lang/String;

    const-string v1, ""

    .line 51
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->depNo:Ljava/lang/String;

    const-string v1, ""

    .line 53
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->clsName:Ljava/lang/String;

    const-string v1, ""

    .line 55
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->type:Ljava/lang/String;

    const-string v1, ""

    .line 57
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    const-string v1, ""

    .line 59
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v1, ""

    .line 61
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->sid:Ljava/lang/String;

    const-string v1, ""

    .line 63
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->account:Ljava/lang/String;

    const-string v1, ""

    .line 65
    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->AccountPassWord:Ljava/lang/String;

    .line 67
    iput-boolean v0, p0, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Ltw/edu/kmu/act/MyApplication;->isEnableGCM:Z

    .line 71
    iput-boolean v0, p0, Ltw/edu/kmu/act/MyApplication;->updateStatus:Z

    const-string v0, "1.0.0"

    .line 77
    iput-object v0, p0, Ltw/edu/kmu/act/MyApplication;->dataVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, ""

    .line 119
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 120
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

    .line 122
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, ""

    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 138
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 89
    sget-object v0, Ltw/edu/kmu/act/MyApplication;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    const-string v0, "Data"

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, v1}, Ltw/edu/kmu/act/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userId"

    const-string v2, ""

    .line 92
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    const-string v1, "userType"

    const-string v2, ""

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v1, "userName"

    const-string v2, ""

    .line 94
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    const-string v1, "token"

    const-string v2, ""

    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/MyApplication;->token:Ljava/lang/String;

    const-string v1, "actSeq"

    const-string v2, ""

    .line 97
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/MyApplication;->actSeq:Ljava/lang/String;

    return-void
.end method
