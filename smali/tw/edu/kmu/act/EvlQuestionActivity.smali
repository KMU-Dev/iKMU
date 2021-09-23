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

.field public m_onHideKeyboardTouchListener:Landroid/view/View$OnTouchListener;

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
    .locals 6

    .line 61
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 68
    iput v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->CLOSE_PROGRESSBAR:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->choiceNumList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->questionNumList:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->questionAnsMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 88
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "toqt1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "toqt2"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "toqt3"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    .line 89
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "etoqt1"

    aput-object v1, v0, v3

    const-string v1, "etoqt2"

    aput-object v1, v0, v4

    const-string v1, "etoqt3"

    aput-object v1, v0, v5

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->etoqt:[Ljava/lang/String;

    const-string v0, "class"

    .line 95
    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    .line 278
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$5;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$5;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->handler:Landroid/os/Handler;

    .line 881
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$13;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$13;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1292
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$15;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$15;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->m_onHideKeyboardTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teafno:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Ltw/edu/kmu/act/EvlQuestionActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherIdx:I

    return p1
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->titleList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->choiceNumList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->questionAnsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1800(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->questionNumList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$2100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->me:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->resultString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->resultString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->readServerDataList()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2402(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2500(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->member:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->memberLy:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/EvlQuestionActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->showActionDialog()V

    return-void
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->progDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->progDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->norYn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Bundle;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method private initTeacherBtn()V
    .locals 9

    const v0, 0x7f08003f

    .line 227
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 229
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 230
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f0701a9

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 236
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x2

    .line 237
    invoke-virtual {v0, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 v6, -0x1

    .line 238
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 239
    new-instance v7, Ltw/edu/kmu/act/EvlQuestionActivity$3;

    invoke-direct {v7, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$3;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080043

    .line 249
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 251
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v8, -0x2

    invoke-direct {v7, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 253
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 254
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 255
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 257
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 259
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v0, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 261
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 262
    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$4;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTypeBtn(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f080133

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->memberLy:Landroid/widget/LinearLayout;

    const v0, 0x7f08018f

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f080132

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->member:Landroid/widget/TextView;

    const v1, 0x7f0801d5

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "class"

    .line 159
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

    const v1, 0x7f080121

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "class"

    .line 161
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

    .line 162
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->member:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->memberLy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f08004f

    .line 166
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f080050

    .line 167
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn2:Landroid/widget/Button;

    .line 168
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f0700ad

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 169
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn2:Landroid/widget/Button;

    const-string v1, "#00FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 171
    new-instance p1, Ltw/edu/kmu/view/BadgeView;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/view/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-string v1, "0"

    .line 172
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

    .line 173
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

    .line 176
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

    .line 178
    :goto_2
    invoke-virtual {p1}, Ltw/edu/kmu/view/BadgeView;->show()V

    .line 184
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn1:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$1;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity$1;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->btn2:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$2;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity$2;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private readServerDataList()Ljava/lang/String;
    .locals 5

    .line 1093
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1097
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, ""

    return-object v0

    .line 1102
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "year"

    .line 1107
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "sYear"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sem"

    .line 1108
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "sem"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "seqno"

    .line 1109
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "seqno"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "stuno"

    .line 1110
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "teacher"

    .line 1111
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Y"

    .line 1112
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

    .line 1113
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
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

    .line 1119
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1120
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1121
    sget-object v3, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1122
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

    .line 1125
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

    .line 1126
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-object v2
.end method

.method private showActionDialog()V
    .locals 10

    .line 327
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherKey:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 328
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 329
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "canEvl"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
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

    .line 333
    :cond_3
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 334
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v3, :cond_4

    const-string v3, "\uff0aCan be evaluated"

    goto :goto_4

    :cond_4
    const-string v3, "\uff0a\u76ee\u524d\u53ef\u8a55\u91cf\u6559\u5e2b"

    .line 335
    :goto_4
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 336
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltw/edu/kmu/act/EvlQuestionActivity$6;

    invoke-direct {v4, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$6;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f08012c

    .line 346
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 348
    new-instance v9, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;

    iget-object v5, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    const v6, 0x7f0a0064

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

    .line 357
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$7;

    invoke-direct {v0, p0, v2}, Ltw/edu/kmu/act/EvlQuestionActivity$7;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 380
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :array_0
    .array-data 4
        0x7f0801d9
        0x7f0801dd
    .end array-data
.end method


# virtual methods
.method public addDots()V
    .locals 5

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->dots:Ljava/util/List;

    const v0, 0x7f0800d6

    .line 904
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 907
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-nez v1, :cond_0

    .line 909
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

    .line 910
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 911
    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 912
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->dots:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 917
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$14;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$14;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00e8

    return v0
.end method

.method public initViewPager(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 388
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 392
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 394
    :goto_0
    iget-object v5, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    if-ne v2, v4, :cond_0

    const v5, 0x7f0a0052

    .line 396
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f080180

    .line 397
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 398
    invoke-virtual {v1, v6}, Ltw/edu/kmu/act/EvlQuestionActivity;->setAllChildViewTouchOutsideEvent(Landroid/view/ViewGroup;)V

    .line 399
    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f080257

    .line 406
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 407
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 408
    new-instance v0, Ltw/edu/kmu/act/EvlQuestionActivity$8;

    invoke-direct {v0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$8;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    .line 447
    iget-object v4, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 448
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 v4, 0x0

    .line 451
    :goto_1
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_22

    .line 453
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    .line 454
    invoke-direct {v1, v5}, Ltw/edu/kmu/act/EvlQuestionActivity;->initTypeBtn(Landroid/view/View;)V

    .line 455
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    .line 456
    iget-boolean v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "ecomp"

    :goto_2
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_3

    :cond_2
    const-string v0, "comp"

    goto :goto_2

    :goto_3
    const v9, 0x7f0801d5

    .line 459
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 460
    iget-object v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teafno:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 461
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700eb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/high16 v11, 0x41700000    # 15.0f

    .line 462
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v10, v3, v3, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    invoke-virtual {v0, v6, v6, v10, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_3
    new-instance v10, Ltw/edu/kmu/act/EvlQuestionActivity$9;

    invoke-direct {v10, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$9;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0801ea

    .line 476
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f08005b

    .line 479
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 480
    iget-object v13, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->viewList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 482
    invoke-virtual {v12, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0c012c

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    new-instance v13, Ltw/edu/kmu/act/EvlQuestionActivity$10;

    invoke-direct {v13, v1, v4, v7}, Ltw/edu/kmu/act/EvlQuestionActivity$10;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;ILjava/util/HashMap;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "teacherName"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v13, :cond_5

    const-string v13, "Instructor"

    goto :goto_4

    :cond_5
    const-string v13, "\u8001\u5e2b"

    :goto_4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v12, ""

    .line 598
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-boolean v13, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v13, :cond_6

    const-string v13, "esubjectList"

    goto :goto_5

    :cond_6
    const-string v13, "subjectList"

    :goto_5
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v0, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v12

    const/4 v12, 0x0

    .line 599
    :goto_6
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v12, v15, :cond_8

    .line 600
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v15

    sub-int/2addr v15, v14

    if-ne v12, v15, :cond_7

    .line 601
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7
    move-object v13, v6

    goto :goto_8

    .line 603
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "\n"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_8
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v13, v12

    .line 608
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 610
    :cond_8
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 611
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0x8

    if-eqz v0, :cond_9

    .line 612
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    const/4 v0, 0x1

    const/4 v11, 0x0

    :goto_a
    const/16 v12, 0xa

    if-gt v0, v12, :cond_b

    add-int/lit8 v11, v0, -0x1

    .line 618
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "qDesc"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v15, ""

    .line 619
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    if-nez v13, :cond_a

    goto :goto_b

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 624
    :cond_b
    :goto_b
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->choiceNumList:Ljava/util/List;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "teacher"

    .line 626
    iget-object v11, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f080134

    .line 628
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 629
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5b78\u751f:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v13, v13, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v13, v13, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080135

    .line 630
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v11, ""

    .line 631
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    new-instance v11, Landroid/text/SpannableString;

    const-string v13, "\u5df2\u586b\u5beb\u6559\u5e2b\u6578: "

    invoke-direct {v11, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 633
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const/high16 v15, -0x1000000

    invoke-direct {v13, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v11}, Landroid/text/Spannable;->length()I

    move-result v15

    const/16 v10, 0x21

    invoke-interface {v11, v13, v3, v15, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 634
    new-instance v13, Landroid/text/SpannableString;

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

    invoke-direct {v13, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 635
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/high16 v15, -0x10000

    invoke-direct {v9, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v13}, Landroid/text/Spannable;->length()I

    move-result v15

    invoke-interface {v13, v9, v3, v15, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 636
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 638
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const-string v0, ""

    move-object v9, v0

    const/4 v0, 0x0

    .line 640
    :goto_c
    iget-object v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_f

    .line 641
    iget-object v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v14

    if-ne v0, v10, :cond_d

    .line 642
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-boolean v11, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v11, :cond_c

    const-string v11, "teafenam"

    goto :goto_d

    :cond_c
    const-string v11, "teaName"

    :goto_d
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    .line 644
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->teacherDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-boolean v11, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v11, :cond_e

    const-string v11, "teafenam"

    goto :goto_e

    :cond_e
    const-string v11, "teaName"

    :goto_e
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 647
    :cond_f
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->member:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    const/4 v0, 0x1

    :goto_10
    if-gt v0, v12, :cond_16

    .line 653
    iget-boolean v9, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eqDesc"

    :goto_11
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_12

    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "qDesc"

    goto :goto_11

    .line 654
    :goto_12
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "v"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "id"

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v11, v13, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 655
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v11, ""

    .line 656
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    if-nez v9, :cond_12

    goto :goto_14

    :cond_12
    :goto_13
    const v11, 0x7f0801d5

    goto :goto_15

    .line 657
    :cond_13
    :goto_14
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 659
    :goto_15
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 660
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0801ea

    .line 661
    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 662
    iget-boolean v13, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v13, :cond_14

    const-string v13, "Low<-------Level of Agreement------->High"

    goto :goto_16

    :cond_14
    const-string v13, "\u4f4e<-------\u540c\u610f\u7a0b\u5ea6------->\u9ad8"

    :goto_16
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v0, v14, :cond_15

    const/4 v13, 0x0

    goto :goto_17

    :cond_15
    const/16 v13, 0x8

    .line 663
    :goto_17
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const v11, 0x7f08015c

    .line 664
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioGroup;

    .line 665
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_t"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 666
    new-instance v13, Ltw/edu/kmu/act/EvlQuestionActivity$11;

    invoke-direct {v13, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$11;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    invoke-virtual {v11, v13}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v11, 0x7f080165

    .line 708
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    .line 709
    invoke-virtual {v10, v14}, Landroid/widget/RadioButton;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    :cond_16
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 714
    :goto_18
    iget-object v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_18

    .line 715
    iget-object v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ""

    .line 717
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    goto :goto_19

    :cond_17
    add-int/lit8 v9, v0, 0x1

    move v0, v9

    goto :goto_18

    .line 722
    :cond_18
    :goto_19
    iget-object v0, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->questionNumList:Ljava/util/List;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    sget-object v0, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tempCount is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0800a8

    .line 728
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v9, 0x7f0800de

    .line 729
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    const-string v10, ""

    .line 730
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    if-nez v8, :cond_19

    goto/16 :goto_1c

    :cond_19
    const v10, 0x7f0801d5

    .line 734
    :try_start_2
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 735
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f08016b

    .line 736
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    const v8, 0x7f08016c

    .line 737
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 740
    new-instance v8, Lorg/json/JSONArray;

    iget-boolean v10, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v10, :cond_1a

    const-string v10, "ecompList"

    goto :goto_1a

    :cond_1a
    const-string v10, "compList"

    :goto_1a
    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v8, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v10, -0x1

    :cond_1b
    const/16 v11, 0x9

    if-ge v10, v11, :cond_1e

    .line 747
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cb_Content2"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "id"

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 748
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 749
    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 750
    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v12, 0x0

    .line 752
    :goto_1b
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_1b

    .line 753
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "_"

    .line 754
    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v3

    const-string v6, "_"

    .line 755
    invoke-virtual {v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v14

    .line 756
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 757
    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 758
    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 759
    invoke-virtual {v11, v15}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 760
    new-instance v6, Ltw/edu/kmu/act/EvlQuestionActivity$12;

    invoke-direct {v6, v1, v0, v9}, Ltw/edu/kmu/act/EvlQuestionActivity$12;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v6, "9"

    .line 789
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 790
    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setVisibility(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1c
    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0x8

    const/4 v14, 0x1

    goto :goto_1b

    :catch_2
    move-exception v0

    .line 860
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d

    .line 731
    :cond_1d
    :goto_1c
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    :goto_1d
    const/4 v0, 0x0

    .line 864
    :goto_1e
    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_21

    .line 865
    iget-object v6, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 867
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

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 868
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v9, ""

    .line 869
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    if-nez v6, :cond_1f

    goto :goto_1f

    :cond_1f
    const/16 v9, 0x8

    goto :goto_20

    :cond_20
    :goto_1f
    const/16 v9, 0x8

    .line 870
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 872
    :goto_20
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "titleE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "id"

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 873
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 874
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_21
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_22
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 109
    sget-object v0, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    .line 113
    iget-boolean p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->etoqt:[Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->toqt:[Ljava/lang/String;

    :cond_0
    const-string p1, "Data"

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f080125

    .line 118
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->lv:Landroid/widget/ListView;

    .line 120
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    const-string p1, "class"

    .line 121
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0014

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->url:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0012

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->url:Ljava/lang/String;

    .line 131
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "teafno"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->teafno:Ljava/lang/String;

    .line 132
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

    .line 134
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "norYn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->norYn:Ljava/lang/String;

    .line 135
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

    .line 137
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 140
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

    .line 142
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlQuestionActivity;->initTeacherBtn()V

    .line 144
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 145
    new-instance p1, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Ltw/edu/kmu/act/EvlQuestionActivity$1;)V

    const/4 v1, 0x1

    .line 146
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
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

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "me"

    .line 1140
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->me:Ljava/lang/String;

    .line 1142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1143
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1144
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1146
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1148
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1152
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

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1164
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "prog"

    .line 1165
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1166
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1168
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1169
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1170
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1171
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1172
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1173
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1175
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1181
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

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1193
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "me"

    .line 1194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->me:Ljava/lang/String;

    .line 1195
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 1196
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 1197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1198
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1199
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1200
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1201
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1203
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1205
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1211
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

    .line 1219
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/EvlQuestionActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1225
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 1226
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 1227
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1228
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1229
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1230
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1231
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1232
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1233
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1234
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1236
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1242
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

    .line 934
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

    .line 938
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 939
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

.method public setAllChildViewTouchOutsideEvent(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    .line 1272
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1273
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1275
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1276
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->setTouchOutsideListener(Landroid/view/View;)V

    .line 1277
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->setAllChildViewTouchOutsideEvent(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1280
    :cond_0
    instance-of v2, v1, Landroid/widget/EditText;

    if-nez v2, :cond_1

    .line 1281
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->setTouchOutsideListener(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    const v0, 0x7f08023b

    .line 220
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "class"

    .line 222
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

.method public setTouchOutsideListener(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1288
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity;->m_onHideKeyboardTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
