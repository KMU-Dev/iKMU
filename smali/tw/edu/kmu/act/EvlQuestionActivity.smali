.class public Ltw/edu/kmu/act/EvlQuestionActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "EvlQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;,
        Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;
    }
.end annotation


# static fields
.field private static final NUM_PAGES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EvlQuestionActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private choiceNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private etoqt:[Ljava/lang/String;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private me:Ljava/lang/String;

.field private member:Landroid/widget/TextView;

.field private memberLy:Landroid/widget/LinearLayout;

.field private norYn:Ljava/lang/String;

.field public pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private progDataList:Ljava/util/ArrayList;
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

.field private questionAnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private questionNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resultString:Ljava/lang/String;

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

.field private teacherDataList:Ljava/util/ArrayList;
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

.field private teacherIdx:I

.field private teacherKey:[Ljava/lang/String;

.field private teafno:Ljava/lang/String;

.field private titleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private toqt:[Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 55
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 62
    iput v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->CLOSE_PROGRESSBAR:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->choiceNumList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->questionNumList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->questionAnsMap:Ljava/util/HashMap;

    const/4 v0, 0x4

    .line 82
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "toqt"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "toqt1"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "toqt2"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "toqtx"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    .line 83
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "etoqt"

    aput-object v1, v0, v3

    const-string v1, "etoqt1"

    aput-object v1, v0, v4

    const-string v1, "etoqt2"

    aput-object v1, v0, v5

    const-string v1, "etoqtx"

    aput-object v1, v0, v6

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->etoqt:[Ljava/lang/String;

    const-string v0, "class"

    .line 89
    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    .line 268
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$5;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$5;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->handler:Landroid/os/Handler;

    .line 699
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$12;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$12;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/Button;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teafno:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Ltw/edu/kmu/act/EvlQuestionActivity;I)I
    .locals 0

    .line 55
    iput p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherIdx:I

    return p1
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->titleList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->choiceNumList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->questionAnsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1800(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->questionNumList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/Button;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$2100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->me:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->resultString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->resultString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->readServerDataList()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2402(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2500(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->member:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->memberLy:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/EvlQuestionActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->showActionDialog()V

    return-void
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->progDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->progDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->norYn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Bundle;
    .locals 0

    .line 55
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method private initTeacherBtn()V
    .locals 9

    const v0, 0x7f080040

    .line 217
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 219
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 220
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f0701a9

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x2

    .line 227
    invoke-virtual {v0, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 v6, -0x1

    .line 228
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 229
    new-instance v7, Ltw/edu/kmu/act/EvlQuestionActivity$3;

    invoke-direct {v7, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$3;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080044

    .line 239
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 241
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v8, -0x2

    invoke-direct {v7, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 243
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 244
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 245
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 247
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 249
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v0, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 251
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 252
    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$4;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTypeBtn(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f080129

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->memberLy:Landroid/widget/LinearLayout;

    const v0, 0x7f080181

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f080128

    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->member:Landroid/widget/TextView;

    const v1, 0x7f0801c7

    .line 148
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "class"

    .line 149
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f080117

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "class"

    .line 151
    iget-object v5, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->member:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->memberLy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f080050

    .line 156
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f080051

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn2:Landroid/widget/Button;

    .line 158
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f0700ad

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 159
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn2:Landroid/widget/Button;

    const-string v1, "#00FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 161
    new-instance p1, Ltw/edu/kmu/view/BadgeView;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/view/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-string v1, "0"

    .line 162
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "cntY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "0"

    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "cntN"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltw/edu/kmu/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 166
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltw/edu/kmu/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_2
    invoke-virtual {p1}, Ltw/edu/kmu/view/BadgeView;->show()V

    .line 174
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$1;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity$1;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn2:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$2;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity$2;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private readServerDataList()Ljava/lang/String;
    .locals 5

    .line 915
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 919
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, ""

    return-object v0

    .line 924
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "year"

    .line 929
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "sYear"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sem"

    .line 930
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "sem"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "seqno"

    .line 931
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "seqno"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "stuno"

    .line 932
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "teacher"

    .line 933
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Y"

    .line 934
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "pblYn"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "b"

    goto :goto_0

    :cond_1
    const-string v2, "n"

    :goto_0
    const-string v3, "filltype"

    .line 935
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_2
    sget-object v2, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 939
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 940
    sget-object v3, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 941
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 944
    :goto_1
    sget-object v0, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-object v2
.end method

.method private showActionDialog()V
    .locals 10

    .line 317
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherKey:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 318
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 319
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "canEvl"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherKey:[Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uff0a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iget-boolean v5, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v5, :cond_0

    const-string v5, "teafenam"

    goto :goto_1

    :cond_0
    const-string v5, "teacherName"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_1
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-boolean v4, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v4, :cond_2

    const-string v4, "teafenam"

    goto :goto_2

    :cond_2
    const-string v4, "teacherName"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_3
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 324
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v3, :cond_4

    const-string v3, "\uff0aCan be evaluated"

    goto :goto_4

    :cond_4
    const-string v3, "\uff0a\u76ee\u524d\u53ef\u8a55\u91cf\u6559\u5e2b"

    .line 325
    :goto_4
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 326
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltw/edu/kmu/act/EvlQuestionActivity$6;

    invoke-direct {v4, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$6;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f080122

    .line 336
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 338
    new-instance v9, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;

    iget-object v5, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    const v6, 0x7f0a0062

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const-string v4, "title11"

    aput-object v4, v7, v0

    const-string v0, "title12"

    const/4 v4, 0x1

    aput-object v0, v7, v4

    new-array v8, v3, [I

    fill-array-data v8, :array_0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 347
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$7;

    invoke-direct {v0, p0, v2}, Ltw/edu/kmu/act/EvlQuestionActivity$7;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :array_0
    .array-data 4
        0x7f0801cb
        0x7f0801cf
    .end array-data
.end method


# virtual methods
.method public addDots()V
    .locals 5

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->dots:Ljava/util/List;

    const v0, 0x7f0800cb

    .line 722
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 725
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-nez v1, :cond_0

    .line 727
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070148

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070149

    goto :goto_1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 729
    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 730
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->dots:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$13;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$13;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00e6

    return v0
.end method

.method public initViewPager(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 378
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 382
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 384
    :goto_0
    iget-object v5, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    if-ne v2, v4, :cond_0

    const v5, 0x7f0a0052

    .line 386
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 387
    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f08024a

    .line 394
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 395
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 396
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$8;

    invoke-direct {v0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$8;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    .line 435
    iget-object v4, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 436
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 v4, 0x0

    .line 439
    :goto_1
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_19

    .line 441
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    .line 442
    invoke-direct {v1, v5}, Ltw/edu/kmu/act/EvlQuestionActivity;->initTypeBtn(Landroid/view/View;)V

    .line 443
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    const v8, 0x7f0801c7

    .line 447
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 448
    iget-object v9, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teafno:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 449
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/high16 v10, 0x41700000    # 15.0f

    .line 450
    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v9, v3, v3, v11, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 451
    invoke-virtual {v0, v6, v6, v9, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_2
    new-instance v9, Ltw/edu/kmu/act/EvlQuestionActivity$9;

    invoke-direct {v9, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$9;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0801dc

    .line 464
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f08005c

    .line 467
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 468
    iget-object v12, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 470
    invoke-virtual {v11, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0c0130

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 473
    new-instance v12, Ltw/edu/kmu/act/EvlQuestionActivity$10;

    invoke-direct {v12, v1, v4, v7}, Ltw/edu/kmu/act/EvlQuestionActivity$10;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;ILjava/util/HashMap;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "teacherName"

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v12, :cond_4

    const-string v12, "Instructor"

    goto :goto_2

    :cond_4
    const-string v12, "\u8001\u5e2b"

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v11, ""

    .line 557
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-boolean v12, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v12, :cond_5

    const-string v12, "esubjectList"

    goto :goto_3

    :cond_5
    const-string v12, "subjectList"

    :goto_3
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v0, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v11

    const/4 v11, 0x0

    .line 558
    :goto_4
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v11, v14, :cond_7

    .line 559
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    sub-int/2addr v14, v13

    if-ne v11, v14, :cond_6

    .line 560
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_5
    move-object v12, v14

    goto :goto_6

    .line 562
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v12, v11

    .line 567
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 569
    :cond_7
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 570
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, 0x8

    if-eqz v0, :cond_8

    .line 571
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    const/4 v0, 0x1

    const/4 v10, 0x0

    :goto_8
    const/16 v12, 0xa

    if-gt v0, v12, :cond_a

    add-int/lit8 v10, v0, -0x1

    .line 577
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "qDesc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, ""

    .line 578
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 583
    :cond_a
    :goto_9
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->choiceNumList:Ljava/util/List;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "teacher"

    .line 584
    iget-object v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f08012a

    .line 586
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 587
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5b78\u751f:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v14, v14, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " / "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v14, v14, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012b

    .line 588
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v10, ""

    .line 589
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    new-instance v10, Landroid/text/SpannableString;

    const-string v14, "\u5df2\u586b\u5beb\u6559\u5e2b\u6578: "

    invoke-direct {v10, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 591
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    const/high16 v15, -0x1000000

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v15

    const/16 v6, 0x21

    invoke-interface {v10, v14, v3, v15, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 592
    new-instance v14, Landroid/text/SpannableString;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 593
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/high16 v15, -0x10000

    invoke-direct {v9, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v14}, Landroid/text/Spannable;->length()I

    move-result v15

    invoke-interface {v14, v9, v3, v15, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 594
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 596
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const-string v0, ""

    move-object v6, v0

    const/4 v0, 0x0

    .line 598
    :goto_a
    iget-object v9, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_e

    .line 599
    iget-object v9, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v13

    if-ne v0, v9, :cond_c

    .line 600
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iget-boolean v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v10, :cond_b

    const-string v10, "teafenam"

    goto :goto_b

    :cond_b
    const-string v10, "teaName"

    :goto_b
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 602
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iget-boolean v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v10, :cond_d

    const-string v10, "teafenam"

    goto :goto_c

    :cond_d
    const-string v10, "teaName"

    :goto_c
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 605
    :cond_e
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->member:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    const/4 v0, 0x1

    :goto_e
    if-gt v0, v12, :cond_14

    .line 611
    iget-boolean v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eqDesc"

    :goto_f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_10

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "qDesc"

    goto :goto_f

    .line 612
    :goto_10
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "v"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v14, "id"

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 613
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, ""

    .line 614
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 615
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :cond_11
    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 618
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0801dc

    .line 619
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 620
    iget-boolean v14, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v14, :cond_12

    const-string v14, "Low<-------Level of Agreement------->High"

    goto :goto_11

    :cond_12
    const-string v14, "\u4f4e<-------\u540c\u610f\u7a0b\u5ea6------->\u9ad8"

    :goto_11
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v0, v13, :cond_13

    const/4 v14, 0x0

    goto :goto_12

    :cond_13
    const/16 v14, 0x8

    .line 621
    :goto_12
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const v10, 0x7f080152

    .line 622
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioGroup;

    .line 623
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 624
    new-instance v14, Ltw/edu/kmu/act/EvlQuestionActivity$11;

    invoke-direct {v14, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$11;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v10, v14}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v10, 0x7f08015b

    .line 666
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 667
    invoke-virtual {v9, v13}, Landroid/widget/RadioButton;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_14
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 672
    :goto_13
    iget-object v8, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_16

    .line 673
    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    const-string v8, ""

    .line 675
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_14

    :cond_15
    move v6, v0

    goto :goto_13

    :cond_16
    move v0, v6

    .line 679
    :goto_14
    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->questionNumList:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 683
    :goto_15
    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_18

    .line 684
    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 685
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "e"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 686
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v9, ""

    .line 687
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 688
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :cond_17
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "titleE"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "id"

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 691
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 692
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_18
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    sget-object v0, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    .line 107
    iget-boolean p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->etoqt:[Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    :cond_0
    const-string p1, "Data"

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f08011b

    .line 112
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->lv:Landroid/widget/ListView;

    .line 114
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    const-string p1, "class"

    .line 115
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0015

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->url:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0013

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->url:Ljava/lang/String;

    .line 121
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "teafno"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teafno:Ljava/lang/String;

    .line 122
    sget-object p1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "teafno is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teafno:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "norYn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->norYn:Ljava/lang/String;

    .line 125
    sget-object p1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "norYn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->norYn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 130
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    iget-boolean v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v1, :cond_2

    const-string v1, "englishco"

    goto :goto_1

    :cond_2
    const-string v1, "chineseCo"

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->initTeacherBtn()V

    .line 134
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 135
    new-instance p1, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Ltw/edu/kmu/act/EvlQuestionActivity$1;)V

    const/4 v1, 0x1

    .line 136
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    sget-object p1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 957
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 958
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "me"

    .line 959
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->me:Ljava/lang/String;

    .line 961
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 962
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 963
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 964
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 965
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 967
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 971
    sget-object v1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseClassList Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v0
.end method

.method public parseClassProgList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 983
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "prog"

    .line 984
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 985
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 986
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 987
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 988
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 989
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 990
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 991
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 992
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 994
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1000
    sget-object v1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseClassList Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public parseQuestionList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
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

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1012
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "me"

    .line 1013
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->me:Ljava/lang/String;

    .line 1014
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 1015
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 1016
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1017
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1018
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1019
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1020
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1021
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1022
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1024
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1030
    sget-object p2, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseQuestionList Error:"

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

.method public readSharedPreferencesData()Ljava/util/ArrayList;
    .locals 8
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

    .line 1038
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1044
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 1045
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 1046
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1047
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1048
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1049
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1050
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1051
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1052
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1053
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1055
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1061
    sget-object v2, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method public selectDot(I)V
    .locals 4

    .line 752
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    const v2, 0x7f070148

    goto :goto_1

    :cond_0
    const v2, 0x7f070149

    .line 756
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 757
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->dots:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    const v0, 0x7f08022e

    .line 210
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "class"

    .line 212
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
