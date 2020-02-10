.class public Ltw/edu/kmu/act/WacTeaFun2Activity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "WacTeaFun2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTeaFun2Activity"


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private lv:Landroid/widget/ListView;

.field private prtype:Ljava/lang/String;

.field private stuInfoList:Ljava/util/ArrayList;
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

.field private typeEnKey:[Ljava/lang/String;

.field private typeKey:[Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 30
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, "3"

    .line 36
    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->prtype:Ljava/lang/String;

    const/4 v0, 0x3

    .line 39
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u50c5\u986f\u793a\u9810\u8b66\u5371\u96aa\u7387\u8d85\u904e30%\u5c0e\u751f"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u986f\u793a\u6709\u7d05\u9ec3\u71c8\u5c0e\u751f"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u986f\u793a\u6240\u6709\u5c0e\u751f"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->typeKey:[Ljava/lang/String;

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Students with NGP>30% "

    aput-object v1, v0, v3

    const-string v1, "Students with Red/Yellow light"

    aput-object v1, v0, v4

    const-string v1, "All students"

    aput-object v1, v0, v5

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->typeEnKey:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/WacTeaFun2Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->showTypeDialog()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/WacTeaFun2Activity;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->prtype:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ltw/edu/kmu/act/WacTeaFun2Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->prtype:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/WacTeaFun2Activity;)Landroid/widget/ListView;
    .locals 0

    .line 30
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/WacTeaFun2Activity;)Landroid/os/Bundle;
    .locals 0

    .line 30
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun2Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/WacTeaFun2Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->stuInfoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/WacTeaFun2Activity;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/WacTeaFun2Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->showList()V

    return-void
.end method

.method private initBtnFunction()V
    .locals 4

    const v0, 0x7f080040

    .line 68
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 71
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f07007b

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string v1, ""

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 v1, -0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 80
    new-instance v1, Ltw/edu/kmu/act/WacTeaFun2Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun2Activity$1;-><init>(Ltw/edu/kmu/act/WacTeaFun2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showList()V
    .locals 8

    .line 136
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->stuInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->stuInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->stuInfoList:Ljava/util/ArrayList;

    const v4, 0x7f0a00ef

    const/4 v1, 0x7

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "stuInfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "ngp"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "sucrd"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "rycrd"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "cntRed"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "cntYellow"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "cntGreen"

    aput-object v7, v5, v6

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 146
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/WacTeaFun2Activity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun2Activity$4;-><init>(Ltw/edu/kmu/act/WacTeaFun2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x7f0801cb
        0x7f0801cf
        0x7f080203
        0x7f080207
        0x7f08020b
        0x7f08020c
        0x7f08020d
    .end array-data
.end method

.method private showTypeDialog()V
    .locals 5

    .line 96
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    .line 98
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Ltw/edu/kmu/act/WacTeaFun2Activity$2;

    invoke-direct {v3, p0}, Ltw/edu/kmu/act/WacTeaFun2Activity$2;-><init>(Ltw/edu/kmu/act/WacTeaFun2Activity;)V

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f080122

    .line 109
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 110
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->typeKey:[Ljava/lang/String;

    const v4, 0x1090003

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    new-instance v2, Ltw/edu/kmu/act/WacTeaFun2Activity$3;

    invoke-direct {v2, p0, v1}, Ltw/edu/kmu/act/WacTeaFun2Activity$3;-><init>(Ltw/edu/kmu/act/WacTeaFun2Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00ec

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->bundle:Landroid/os/Bundle;

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->sharedData:Landroid/content/SharedPreferences;

    .line 48
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0067

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->url:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaFun2Activity;->initBtnFunction()V

    .line 52
    iget-boolean p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->isEnglish:Z

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->typeEnKey:[Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->typeKey:[Ljava/lang/String;

    :cond_0
    const p1, 0x7f08011b

    .line 55
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->lv:Landroid/widget/ListView;

    .line 57
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->bundle:Landroid/os/Bundle;

    const-string v1, "semName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun2Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 59
    new-instance p1, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;-><init>(Ltw/edu/kmu/act/WacTeaFun2Activity;Ltw/edu/kmu/act/WacTeaFun2Activity$1;)V

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    sget-object p1, Ltw/edu/kmu/act/WacTeaFun2Activity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 242
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 243
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 245
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 248
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 250
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 252
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    sget-object p2, Ltw/edu/kmu/act/WacTeaFun2Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseList Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method
