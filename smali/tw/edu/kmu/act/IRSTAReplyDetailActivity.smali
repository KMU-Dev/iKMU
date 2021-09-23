.class public Ltw/edu/kmu/act/IRSTAReplyDetailActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "IRSTAReplyDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/IRSTAReplyDetailActivity$SendReplyData;
    }
.end annotation


# static fields
.field private static final IMG_FILE_NAME:Ljava/lang/String; = "app_report_upload.jpg"

.field private static REQ_SEL_PHOTO:I = 0x3e8

.field private static REQ_SHOT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "IRSTAReplyDetailActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private checkBox:Landroid/widget/CheckBox;

.field private edit1:Landroid/widget/EditText;

.field private imageUrl:Ljava/lang/String;

.field private imgBase64:Ljava/lang/String;

.field private imgRoot:Landroid/widget/LinearLayout;

.field private ivHeight:I

.field private ivRatio:F

.field private ivWidth:I

.field private mRes:Landroid/content/res/Resources;

.field private opMessage:Ljava/lang/String;

.field private picFilePath:Ljava/lang/String;

.field private pivFileDesc:Ljava/lang/String;

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

.field private title:Landroid/widget/TextView;

.field private title1:Landroid/widget/TextView;

.field private title2:Landroid/widget/TextView;

.field private title3:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, "https://mbms.kmu.edu.tw:443/KmuIrs/file.serv?fileID="

    .line 65
    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imageUrl:Ljava/lang/String;

    const-string v0, ""

    .line 70
    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->picFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->pivFileDesc:Ljava/lang/String;

    const-string v0, ""

    .line 72
    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->opMessage:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->ivRatio:F

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->ivWidth:I

    iput v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->ivHeight:I

    const-string v0, ""

    .line 75
    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgBase64:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->initPhotoDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->edit1:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 46
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Landroid/os/Bundle;
    .locals 0

    .line 46
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgBase64:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 46
    sget v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->REQ_SHOT:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 46
    sget v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->REQ_SEL_PHOTO:I

    return v0
.end method

.method private initPhotoDialog(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera"

    .line 273
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-string v2, "\u62cd\u7167"

    aput-object v2, p1, v1

    const-string v1, "\u5f9e\u76f8\u7c3f\u9078\u53d6"

    aput-object v1, p1, v0

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "\u5f9e\u76f8\u7c3f\u9078\u53d6"

    aput-object v0, p1, v1

    .line 275
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    new-instance v1, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;

    invoke-direct {v1, p0, p1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$4;-><init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;[Ljava/lang/String;)V

    .line 336
    new-instance v2, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$5;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$5;-><init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)V

    .line 340
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u53d6\u6d88"

    .line 341
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private initView()V
    .locals 10

    const v0, 0x7f080110

    .line 95
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    const v0, 0x7f0800a0

    .line 97
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->checkBox:Landroid/widget/CheckBox;

    .line 98
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "publicFlag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0800db

    .line 100
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->edit1:Landroid/widget/EditText;

    const v0, 0x7f0801d5

    .line 101
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->title:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->title:Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "className"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801d7

    .line 104
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->title1:Landroid/widget/TextView;

    const v0, 0x7f0801ea

    .line 105
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->title2:Landroid/widget/TextView;

    const v0, 0x7f080210

    .line 106
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->title3:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->title1:Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "askTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->title2:Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "userDesc"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->title3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Q:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "askDesc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801a0

    .line 112
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    new-instance v1, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$1;-><init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "replied"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->edit1:Landroid/widget/EditText;

    iget-object v4, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v5, "replyContent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->edit1:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 127
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 128
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->edit1:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    const/16 v1, 0x8

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "imgPath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {p0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 133
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x40a00000    # 5.0f

    .line 134
    invoke-static {p0, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 135
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    .line 139
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    .line 140
    new-instance v7, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$2;

    invoke-direct {v7, p0, v0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$2;-><init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v7, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-direct {v7, v1, v8, p0}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    aput-object v4, v9, v3

    aput-object v0, v9, v2

    invoke-virtual {v7, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    iget-boolean v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "Click image to enlarge"

    goto :goto_0

    :cond_0
    const-string v1, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 163
    :cond_2
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 164
    iget-object v1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->edit1:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 165
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    new-instance v1, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity$3;-><init>(Ltw/edu/kmu/act/IRSTAReplyDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a007c

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 349
    invoke-super {p0, p1, p2, p3}, Ltw/edu/kmu/act/BasicActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 350
    sget v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->REQ_SHOT:I

    const/high16 v1, 0x40a00000    # 5.0f

    const/16 v2, 0x11

    const/high16 v3, 0x43160000    # 150.0f

    const/4 v4, -0x2

    const/16 v5, 0xf

    const/4 v6, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v6, :cond_1

    .line 352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "app_report_upload.jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->picFilePath:Ljava/lang/String;

    .line 353
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->picFilePath:Ljava/lang/String;

    iget p2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->ivWidth:I

    iget p3, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->ivHeight:I

    invoke-static {p1, p2, p3}, Ltw/edu/kmu/tool/ImageTool;->getBitmapByViewSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v5}, Ltw/edu/kmu/tool/ImageTool;->BmptoRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 361
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 362
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 363
    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 364
    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 365
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 367
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    iget-object p3, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 369
    iget-object p3, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    invoke-static {p1}, Ltw/edu/kmu/tool/ImageTool;->encodeTobase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgBase64:Ljava/lang/String;

    goto :goto_0

    .line 375
    :cond_0
    sget v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->REQ_SEL_PHOTO:I

    if-ne p1, v0, :cond_1

    if-ne p2, v6, :cond_1

    .line 377
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 380
    new-array p3, p2, [Landroid/net/Uri;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p0, p3, p2}, Ltw/edu/kmu/tool/UriTool;->getFilesFromUris(Landroid/content/Context;[Landroid/net/Uri;Z)[Ljava/io/File;

    move-result-object p1

    .line 381
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->picFilePath:Ljava/lang/String;

    .line 382
    iget-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->picFilePath:Ljava/lang/String;

    iget p2, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->ivWidth:I

    iget p3, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->ivHeight:I

    invoke-static {p1, p2, p3}, Ltw/edu/kmu/tool/ImageTool;->getBitmapByViewSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v5}, Ltw/edu/kmu/tool/ImageTool;->BmptoRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 388
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 389
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 390
    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 391
    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 392
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 394
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    iget-object p3, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 396
    iget-object p3, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    invoke-static {p1}, Ltw/edu/kmu/tool/ImageTool;->encodeTobase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->imgBase64:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->bundle:Landroid/os/Bundle;

    .line 85
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0033

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->url:Ljava/lang/String;

    const p1, 0x7f0c00d9

    .line 87
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 408
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 414
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    .line 415
    sget-object v0, Ltw/edu/kmu/act/IRSTAReplyDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
