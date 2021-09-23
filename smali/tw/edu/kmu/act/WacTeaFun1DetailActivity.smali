.class public Ltw/edu/kmu/act/WacTeaFun1DetailActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "WacTeaFun1DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTeaFun1DetailActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private courList:Ljava/util/ArrayList;
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

.field private url:Ljava/lang/String;


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

.method static synthetic access$100(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;)Landroid/os/Bundle;
    .locals 0

    .line 17
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->courList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->showList(Ljava/lang/String;)V

    return-void
.end method

.method private showList(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    const v2, 0x7f0801f0

    const v3, 0x7f0801eb

    const v4, 0x7f0801d9

    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v5, p1

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "items"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    invoke-virtual {v1, v4}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v5, 0x7f0801dd

    .line 47
    invoke-virtual {v1, v5}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 48
    invoke-virtual {v1, v3}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 49
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f08021d

    .line 50
    invoke-virtual {v1, v7}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f080227

    .line 51
    invoke-virtual {v1, v8}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f080228

    .line 52
    invoke-virtual {v1, v9}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f080229

    .line 53
    invoke-virtual {v1, v10}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f08022a

    .line 54
    invoke-virtual {v1, v11}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f08022c

    .line 55
    invoke-virtual {v1, v12}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f08022d

    .line 56
    invoke-virtual {v1, v13}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f08022e

    .line 57
    invoke-virtual {v1, v14}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f08022f

    .line 58
    invoke-virtual {v1, v15}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v2, 0x7f080231

    .line 59
    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    if-eqz v4, :cond_0

    const-string v4, "Teaching-development:"

    goto :goto_0

    :cond_0
    const-string v4, "\u6559\u5b78\u6210\u9577:"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "scoreTeach"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    if-eqz v4, :cond_1

    const-string v4, "Research-development:"

    goto :goto_1

    :cond_1
    const-string v4, "\u7814\u7a76\u6210\u9577:"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "scoreResearch"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    if-eqz v4, :cond_2

    const-string v4, "Self-development:"

    goto :goto_2

    :cond_2
    const-string v4, "\u81ea\u6211\u6210\u9577:"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "selfTotal"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-boolean v3, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    if-eqz v3, :cond_3

    const-string v3, "Counseling"

    goto :goto_3

    :cond_3
    const-string v3, "\u8f14\u5c0e\u77e5\u80fd"

    :goto_3
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-boolean v3, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    if-eqz v3, :cond_4

    const-string v3, "Gender equality"

    goto :goto_4

    :cond_4
    const-string v3, "\u6027\u5225\u5e73\u7b49"

    :goto_4
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-boolean v3, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    if-eqz v3, :cond_5

    const-string v3, "Ethical law"

    goto :goto_5

    :cond_5
    const-string v3, "\u502b\u7406\u6cd5\u5f8b"

    :goto_5
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-boolean v3, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    if-eqz v3, :cond_6

    const-string v3, "Others"

    goto :goto_6

    :cond_6
    const-string v3, "\u4e0d\u5206\u985e"

    :goto_6
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "selfTutor"

    .line 69
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "selfEquality"

    .line 70
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "selfEthics"

    .line 71
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "selfNC"

    .line 72
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    if-eqz v4, :cond_7

    const-string v4, "Total:"

    goto :goto_7

    :cond_7
    const-string v4, "\u7e3d\u8a08:"

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "scoreTotal"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 75
    sget-object v2, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    const v0, 0x7f080176

    .line 78
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 80
    iget-object v3, v1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->courList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 82
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0a00e9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f080175

    .line 83
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 84
    rem-int/lit8 v7, v2, 0x2

    if-nez v7, :cond_8

    const v7, 0x7f070198

    .line 85
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_a
    const v6, 0x7f0801d9

    goto :goto_b

    :cond_8
    const v7, 0x7f070199

    .line 87
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_a

    .line 89
    :goto_b
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0801eb

    .line 90
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0801f0

    .line 91
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f080211

    .line 92
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v13, "courName"

    .line 93
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "courType"

    .line 94
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "score"

    .line 95
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "yearsem"

    .line 96
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    .line 99
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_9
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00ea

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    sget-object v0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->bundle:Landroid/os/Bundle;

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->sharedData:Landroid/content/SharedPreferences;

    .line 30
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0062

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->url:Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "year"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->isEnglish:Z

    const-string v1, "\u5e74"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 35
    new-instance p1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;-><init>(Ltw/edu/kmu/act/WacTeaFun1DetailActivity;Ltw/edu/kmu/act/WacTeaFun1DetailActivity$1;)V

    .line 36
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/WacTeaFun1DetailActivity$GetGrowHisData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    sget-object p1, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->TAG:Ljava/lang/String;

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

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 156
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 157
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 162
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    sget-object p2, Ltw/edu/kmu/act/WacTeaFun1DetailActivity;->TAG:Ljava/lang/String;

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
