.class public abstract Ltw/edu/kmu/act/BasicActivity;
.super Landroid/app/Activity;
.source "BasicActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicActivity"


# instance fields
.field private connManager:Landroid/net/ConnectivityManager;

.field protected currentLocale:Ljava/lang/String;

.field protected display:Landroid/view/Display;

.field protected globalVariable:Ltw/edu/kmu/act/MyApplication;

.field protected heightDpi:I

.field protected isDebug:Z

.field protected isEnglish:Z

.field protected isPad:Z

.field protected isSensorExist:Z

.field protected mainHandler:Landroid/os/Handler;

.field private myTitle:Landroid/widget/TextView;

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected serverResource:Ltw/edu/kmu/resource/ServerResource;

.field protected sharedData:Landroid/content/SharedPreferences;

.field protected widthDpi:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Ltw/edu/kmu/act/BasicActivity;->isDebug:Z

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Ltw/edu/kmu/act/BasicActivity;->isSensorExist:Z

    .line 51
    iput-boolean v0, p0, Ltw/edu/kmu/act/BasicActivity;->isEnglish:Z

    .line 314
    new-instance v0, Ltw/edu/kmu/act/BasicActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/BasicActivity$2;-><init>(Ltw/edu/kmu/act/BasicActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/BasicActivity;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private setPadValue()V
    .locals 3

    .line 147
    iget-object v0, p0, Ltw/edu/kmu/act/BasicActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Ltw/edu/kmu/tool/ImageTool;->px2dip(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/BasicActivity;->widthDpi:I

    .line 148
    iget-object v0, p0, Ltw/edu/kmu/act/BasicActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Ltw/edu/kmu/tool/ImageTool;->px2dip(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/BasicActivity;->heightDpi:I

    .line 149
    sget-object v0, Ltw/edu/kmu/act/BasicActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device width dpi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/act/BasicActivity;->widthDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and height dpi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/act/BasicActivity;->heightDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v0, p0, Ltw/edu/kmu/act/BasicActivity;->widthDpi:I

    const/16 v1, 0x226

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Ltw/edu/kmu/act/BasicActivity;->isPad:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Ltw/edu/kmu/act/BasicActivity;->isPad:Z

    .line 157
    :goto_0
    sget-object v0, Ltw/edu/kmu/act/BasicActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPad value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltw/edu/kmu/act/BasicActivity;->isPad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public chechkSensor()V
    .locals 2

    const-string v0, "sensor"

    .line 114
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/BasicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    .line 115
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Ltw/edu/kmu/act/BasicActivity;->isSensorExist:Z

    :cond_0
    return-void
.end method

.method protected createWebView(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/BasicActivity;->createWebView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createWebView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x64

    .line 190
    invoke-virtual {p0, p1, p2, v0}, Ltw/edu/kmu/act/BasicActivity;->createWebView(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected createWebView(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 201
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "title"

    .line 204
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "scale"

    .line 206
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/BasicActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected getFunctionButtonId()I
    .locals 1

    const v0, 0x7f080040

    return v0
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getRunnableActivity()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStringById(I)Ljava/lang/String;
    .locals 1

    .line 346
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTitleId()I
    .locals 1

    const v0, 0x7f08022e

    return v0
.end method

.method protected getTitleThemeId()I
    .locals 1

    .line 265
    iget-boolean v0, p0, Ltw/edu/kmu/act/BasicActivity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a006e

    return v0

    :cond_0
    const v0, 0x7f0a006f

    return v0
.end method

.method public isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isFunctionButtonExist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isNetworkAlive()Z
    .locals 1

    .line 305
    iget-object v0, p0, Ltw/edu/kmu/act/BasicActivity;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 309
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method protected isUseCustomTitleBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/BasicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->sharedData:Landroid/content/SharedPreferences;

    .line 68
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c008a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->currentLocale:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/BasicActivity;->isEnglish:Z

    .line 72
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->isUseCustomTitleBar()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/BasicActivity;->requestWindowFeature(I)Z

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/BasicActivity;->requestWindowFeature(I)Z

    :goto_0
    const-string p1, "window"

    .line 77
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->display:Landroid/view/Display;

    .line 78
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;->setPadValue()V

    .line 79
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->chechkSensor()V

    .line 80
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->isUseCustomTitleBar()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getTitleThemeId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 83
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->isFunctionButtonExist()Z

    move-result p1

    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getFunctionButtonId()I

    move-result p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/16 v2, 0x8

    .line 85
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 89
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 90
    iget-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Ltw/edu/kmu/act/BasicActivity;->currentLocale:Ljava/lang/String;

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Loading.."

    goto :goto_1

    :cond_2
    const-string v2, "\u8b80\u53d6\u4e2d..."

    :goto_1
    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Ltw/edu/kmu/act/BasicActivity;->currentLocale:Ljava/lang/String;

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Please wait"

    goto :goto_2

    :cond_3
    const-string v2, "\u8acb\u7a0d\u5019"

    :goto_2
    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    iget-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 97
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getRunnableActivity()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 98
    iget-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Ltw/edu/kmu/act/BasicActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/BasicActivity$1;-><init>(Ltw/edu/kmu/act/BasicActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_4
    const-string p1, "connectivity"

    .line 107
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity;->connManager:Landroid/net/ConnectivityManager;

    .line 109
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->updateBg()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->isUseCustomTitleBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Ltw/edu/kmu/act/BasicActivity;->myTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Ltw/edu/kmu/act/BasicActivity;->getTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/BasicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/BasicActivity;->myTitle:Landroid/widget/TextView;

    .line 168
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/BasicActivity;->myTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected updateBg()V
    .locals 5

    .line 125
    sget-object v0, Ltw/edu/kmu/act/BasicActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateBg start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Ltw/edu/kmu/act/BasicActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v1, "dataVersion"

    const-string v2, "1.0.1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Ltw/edu/kmu/act/BasicActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v2, "updateComplete"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "1.0.1"

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const v0, 0x7f080168

    .line 131
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/BasicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "list_bg.png"

    .line 133
    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->getBitmapFromStorage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    sget-object v2, Ltw/edu/kmu/act/BasicActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBg bitmap is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 136
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
