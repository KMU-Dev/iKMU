.class public Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "IRSRecordListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IRSRecordListViewAdapter"


# instance fields
.field private alertView:Landroid/widget/LinearLayout;

.field private context:Ltw/edu/kmu/act/IRSRecordActivity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field protected display:Landroid/view/Display;

.field private imageUrl:Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private isEnglish:Z

.field private resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ltw/edu/kmu/act/IRSRecordActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltw/edu/kmu/act/IRSRecordActivity;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 53
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const-string p4, "https://mbms.kmu.edu.tw:443/KmuIrs/file.serv?fileID="

    .line 48
    iput-object p4, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->imageUrl:Ljava/lang/String;

    const/4 p4, 0x0

    .line 49
    iput-boolean p4, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    .line 54
    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->data:Ljava/util/List;

    .line 55
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 57
    iput p3, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->resource:I

    const p2, 0x7f0c0088

    .line 58
    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/IRSRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "en"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    const-string p2, "window"

    .line 59
    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/IRSRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->display:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;)Ltw/edu/kmu/act/IRSRecordActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    return-object p0
.end method

.method private parseAskView(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 511
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    .line 512
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 513
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    const v2, 0x7f0700f4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 515
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v3, 0x2

    .line 516
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v4, -0x1000000

    .line 517
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "askTime"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v5, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v5}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 520
    iget-object v6, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iget-object v8, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v8, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v6, 0x0

    .line 521
    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 523
    new-instance v5, Landroid/widget/TextView;

    iget-object v8, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 524
    invoke-virtual {v5, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 525
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    iget-boolean v8, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v8, :cond_0

    const-string v8, "teafEnam"

    goto :goto_0

    :cond_0
    const-string v8, "teafNam"

    :goto_0
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v8, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v8}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0700f9

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 528
    iget-object v10, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v10, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iget-object v11, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v11, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v8, v9, v9, v10, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 529
    invoke-virtual {v5, v8, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 531
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 532
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 533
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    new-instance v0, Landroid/widget/TextView;

    iget-object v5, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 538
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 539
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Q:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "askDesc"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v5, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "imgPath"

    .line 543
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 544
    new-instance v5, Landroid/widget/ImageView;

    iget-object v7, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 545
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v10, 0x43160000    # 150.0f

    invoke-static {v8, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    const/4 v10, -0x2

    invoke-direct {v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    .line 546
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 547
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 549
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    .line 551
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 552
    new-instance v11, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$5;

    invoke-direct {v11, p0, v0}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$5;-><init>(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    new-instance v11, Ltw/edu/kmu/tool/ImageDownloaderTask;

    iget-object v12, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v11, v5, v6, v12}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v6, v3, [Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v0, v6, v1

    invoke-virtual {v11, v6}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 565
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 567
    iget-boolean v1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "Click image to enlarge"

    goto :goto_1

    :cond_1
    const-string v1, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 570
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 571
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 575
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 576
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "replyContent"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, ""

    const-string v2, "replyContent"

    .line 578
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 579
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 584
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private parseQAView(Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "questionType"

    .line 93
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    const-string v4, "1"

    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f0700f9

    const v6, 0x7f0700ee

    const v7, 0x7f0700f4

    const/4 v8, 0x1

    const/high16 v9, 0x41900000    # 18.0f

    const/4 v10, 0x2

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v12, -0x1000000

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_1

    .line 98
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    .line 99
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 103
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ansTime"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 108
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v8, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v14, v14, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {v4, v6, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v6, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-boolean v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v7, :cond_0

    const-string v7, "teafEnam"

    goto :goto_0

    :cond_0
    const-string v7, "teafNam"

    :goto_0
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 116
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v8, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v5, v14, v14, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {v6, v5, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Q:\u5feb\u554f\u5feb\u7b54("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "myAnswer"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_f

    :cond_1
    const-string v4, "2"

    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v4, "99"

    .line 432
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 434
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    .line 435
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 436
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 439
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 440
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 441
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ansTime"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 444
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v8, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v14, v14, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 445
    invoke-virtual {v4, v6, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 447
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {v6, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 449
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-boolean v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v7, :cond_3

    const-string v7, "teafEnam"

    goto :goto_1

    :cond_3
    const-string v7, "teafNam"

    :goto_1
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 452
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v8, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v5, v14, v14, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 453
    invoke-virtual {v6, v5, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 455
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 456
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 457
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 462
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->display:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x41

    div-int/lit8 v6, v6, 0x64

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x3

    .line 463
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 464
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x3

    .line 465
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 466
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Q:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "description"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    new-instance v5, Landroid/widget/Button;

    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08004e

    .line 471
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 472
    iget-boolean v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v6, :cond_4

    const-string v6, "details"

    goto :goto_2

    :cond_4
    const-string v6, "\u8a73\u60c5"

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    .line 473
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x7f0700f6

    .line 474
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 475
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v8, 0x42a00000    # 80.0f

    invoke-static {v7, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v8, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 476
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 477
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v7, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 478
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 479
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 480
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 481
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance v6, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$4;

    invoke-direct {v6, v1, v2}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$4;-><init>(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;Ljava/util/HashMap;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 491
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 492
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_f

    :cond_5
    :goto_3
    const-string v4, "2"

    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 137
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    .line 138
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 142
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ansTime"

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "      "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 147
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v15, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v6, v14, v14, v7, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    invoke-virtual {v4, v6, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v6, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-boolean v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v7, :cond_6

    const-string v7, "teafEnam"

    goto :goto_4

    :cond_6
    const-string v7, "teafNam"

    :goto_4
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 155
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v15, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v5, v14, v14, v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    invoke-virtual {v6, v5, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 158
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Q:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "description"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "imgPath"

    .line 170
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v9, 0x43160000    # 150.0f

    invoke-static {v7, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/4 v9, -0x2

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 173
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 174
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 178
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 179
    new-instance v7, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$1;

    invoke-direct {v7, v1, v4}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$1;-><init>(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v7, Ltw/edu/kmu/tool/ImageDownloaderTask;

    iget-object v9, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v7, v5, v13, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v9, v10, [Ljava/lang/String;

    aput-object v6, v9, v14

    aput-object v4, v9, v8

    invoke-virtual {v7, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 194
    iget-boolean v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v5, :cond_7

    const-string v5, "Click image to enlarge"

    goto :goto_5

    :cond_7
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 197
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 198
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    :cond_8
    new-instance v4, Landroid/widget/RadioGroup;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const-string v5, "radioGroup"

    .line 203
    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 205
    new-instance v5, Lorg/json/JSONArray;

    const-string v6, "optionList"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 206
    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 207
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 208
    new-instance v8, Landroid/widget/RadioButton;

    iget-object v9, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v8, v9}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "radioButton"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v8, v12}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "optKey"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "optVal"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f08004e

    const-string v10, "optKey"

    .line 212
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 213
    invoke-virtual {v8, v14}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string v9, "correct"

    .line 214
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 215
    invoke-virtual {v4, v8}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 217
    :cond_9
    invoke-virtual {v4, v14}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 218
    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 222
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 224
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 225
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 226
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 227
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v6, :cond_a

    const-string v6, "My ans:"

    goto :goto_7

    :cond_a
    const-string v6, "\u6211\u7684\u7b54\u6848:"

    :goto_7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "myAnswer"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_f

    :cond_b
    const-string v4, "3"

    .line 234
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 236
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    .line 237
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 241
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 243
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ansTime"

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "      "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 246
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v15, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v6, v14, v14, v7, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    invoke-virtual {v4, v6, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 249
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v6, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 251
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-boolean v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v7, :cond_c

    const-string v7, "teafEnam"

    goto :goto_8

    :cond_c
    const-string v7, "teafNam"

    :goto_8
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 254
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v15, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v5, v14, v14, v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 255
    invoke-virtual {v6, v5, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 257
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 258
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 259
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Q:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "description"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "imgPath"

    .line 269
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 270
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v9, 0x43160000    # 150.0f

    invoke-static {v7, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/4 v9, -0x2

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 272
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 273
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 277
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 280
    new-instance v7, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$2;

    invoke-direct {v7, v1, v4}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$2;-><init>(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    new-instance v7, Ltw/edu/kmu/tool/ImageDownloaderTask;

    iget-object v9, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v7, v5, v13, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v9, v10, [Ljava/lang/String;

    aput-object v6, v9, v14

    aput-object v4, v9, v8

    invoke-virtual {v7, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 295
    iget-boolean v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v5, :cond_d

    const-string v5, "Click image to enlarge"

    goto :goto_9

    :cond_d
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_9
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 298
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 299
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    :cond_e
    new-instance v4, Lorg/json/JSONArray;

    const-string v5, "optionList"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 305
    :goto_a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 306
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 307
    new-instance v7, Landroid/widget/CheckBox;

    iget-object v8, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v7, v8}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkBox"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "optKey"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "optVal"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f08004e

    const-string v9, "optKey"

    .line 311
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const-string v8, "correct"

    .line 312
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 314
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    .line 316
    :cond_f
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 317
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 318
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 319
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 320
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 321
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 322
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v6, :cond_10

    const-string v6, "My ans:"

    goto :goto_b

    :cond_10
    const-string v6, "\u6211\u7684\u7b54\u6848:"

    :goto_b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "myAnswer"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v2, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_f

    :cond_11
    const-string v4, "4"

    .line 328
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 330
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    .line 331
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 332
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 335
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v4, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 337
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ansTime"

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "      "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 340
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v15, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v15, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v6, v14, v14, v7, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    invoke-virtual {v4, v6, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 343
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    invoke-virtual {v6, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 345
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    iget-boolean v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v7, :cond_12

    const-string v7, "teafEnam"

    goto :goto_c

    :cond_12
    const-string v7, "teafNam"

    :goto_c
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/IRSRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 348
    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v9, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v9, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v5, v14, v14, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 349
    invoke-virtual {v6, v5, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 351
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 353
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 358
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    invoke-virtual {v4, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Q:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "description"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "imgPath"

    .line 363
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 364
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 365
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v9, 0x43160000    # 150.0f

    invoke-static {v7, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/4 v9, -0x2

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 366
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 367
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 371
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 374
    new-instance v7, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$3;

    invoke-direct {v7, v1, v4}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$3;-><init>(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    new-instance v7, Ltw/edu/kmu/tool/ImageDownloaderTask;

    iget-object v9, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v7, v5, v13, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v9, v10, [Ljava/lang/String;

    aput-object v6, v9, v14

    aput-object v4, v9, v8

    invoke-virtual {v7, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    iget-object v4, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 389
    iget-boolean v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v5, :cond_13

    const-string v5, "Click image to enlarge"

    goto :goto_d

    :cond_13
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_d
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 392
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 393
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    :cond_14
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 399
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 400
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 401
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 402
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 403
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 404
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string v5, "edit1"

    .line 406
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 407
    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setTextColor(I)V

    const v5, 0x7f0700f5

    .line 408
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v5, "myAnswer"

    .line 410
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 416
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 417
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 418
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 419
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 420
    iget-object v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->context:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {v6, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 421
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->isEnglish:Z

    if-eqz v6, :cond_15

    const-string v6, "Right ans:"

    goto :goto_e

    :cond_15
    const-string v6, "\u6a19\u6e96\u7b54\u6848:"

    :goto_e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "stdAnswer"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, ""

    const-string v6, "stdAnswer"

    .line 425
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 426
    iget-object v2, v1, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    :cond_16
    :goto_f
    sget-object v2, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "questionType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 503
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 75
    iget-object p2, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "pid"

    .line 77
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    invoke-direct {p0, p1}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->parseAskView(Ljava/util/HashMap;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->parseQAView(Ljava/util/HashMap;)V

    .line 83
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->alertView:Landroid/widget/LinearLayout;

    return-object p1
.end method
