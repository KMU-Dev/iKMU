.class public Ltw/edu/kmu/act/SettingActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SettingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingActivity"


# instance fields
.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private packageName:Ljava/lang/String;

.field private sharedData:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/SettingActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 17
    iget-object p0, p0, Ltw/edu/kmu/act/SettingActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SettingActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 17
    iget-object p0, p0, Ltw/edu/kmu/act/SettingActivity;->sharedData:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SettingActivity;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Ltw/edu/kmu/act/SettingActivity;->packageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public deleteDirectory(Ljava/io/File;)Z
    .locals 3

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 131
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 132
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/SettingActivity;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_1

    .line 136
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00d2

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 30
    sget-object v0, Ltw/edu/kmu/act/SettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Ltw/edu/kmu/act/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0102

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SettingActivity;->packageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Ltw/edu/kmu/act/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SettingActivity;->sharedData:Landroid/content/SharedPreferences;

    .line 40
    invoke-virtual {p0}, Ltw/edu/kmu/act/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/SettingActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    const p1, 0x7f08004f

    .line 42
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    .line 44
    iget-object v0, p0, Ltw/edu/kmu/act/SettingActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v1, "isEnableGCM"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 45
    iget-object v0, p0, Ltw/edu/kmu/act/SettingActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, p0, Ltw/edu/kmu/act/SettingActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v3, "isEnableGCM"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Ltw/edu/kmu/act/MyApplication;->isEnableGCM:Z

    .line 47
    new-instance v0, Ltw/edu/kmu/act/SettingActivity$1;

    invoke-direct {v0, p0, p1}, Ltw/edu/kmu/act/SettingActivity$1;-><init>(Ltw/edu/kmu/act/SettingActivity;Landroid/widget/ToggleButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08005c

    .line 66
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 67
    new-instance v0, Ltw/edu/kmu/act/SettingActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SettingActivity$2;-><init>(Ltw/edu/kmu/act/SettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080061

    .line 76
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 77
    new-instance v0, Ltw/edu/kmu/act/SettingActivity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/SettingActivity$3;-><init>(Ltw/edu/kmu/act/SettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget-object p1, Ltw/edu/kmu/act/SettingActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
