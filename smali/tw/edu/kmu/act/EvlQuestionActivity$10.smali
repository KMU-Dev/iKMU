.class Ltw/edu/kmu/act/EvlQuestionActivity$10;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;->initViewPager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

.field final synthetic val$currentIndex:I

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;ILjava/util/HashMap;)V
    .locals 0

    .line 485
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iput p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$currentIndex:I

    iput-object p3, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 490
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1600(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$currentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x11

    const/4 v3, 0x0

    if-gt v1, p1, :cond_1

    .line 492
    iget-object v4, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v4}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$currentIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 496
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b2c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u984c\u672a\u4f5c\u7b54"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 497
    invoke-virtual {p1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 498
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 503
    :goto_1
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$currentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_t6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 504
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ansT6 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c

    .line 506
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 510
    :goto_2
    iget-object v5, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v5}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1400(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 511
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 513
    :try_start_0
    iget-object v6, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v6}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1400(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const-string v7, "teacher"

    .line 514
    iget-object v8, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v8}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "teafno"

    .line 515
    iget-object v8, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$map:Ljava/util/HashMap;

    const-string v9, "teafno"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "deptno"

    .line 516
    iget-object v8, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$map:Ljava/util/HashMap;

    const-string v9, "deptNo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const/4 v7, 0x1

    :goto_3
    const/16 v8, 0xa

    if-gt v7, v8, :cond_4

    .line 519
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v9}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    iget-object v8, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v8}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v8, "1"

    .line 523
    iget-object v9, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v9}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "2"

    iget-object v9, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v9}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_4
    const-string v7, "t6"

    .line 527
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v7, -0x1

    :goto_4
    const/16 v8, 0x9

    if-ge v7, v8, :cond_9

    const v8, 0x7f0800a8

    .line 529
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 530
    iget-object v9, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v9}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cb_Content2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "id"

    iget-object v13, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v13}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 531
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    const v10, 0x7f0800de

    .line 532
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 533
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkBox k is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  checkBox tag "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {v9}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "t7"

    .line 536
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "t7"

    .line 537
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "t7"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_5
    const-string v10, "t7"

    .line 539
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    :goto_5
    const/16 v10, 0x8

    if-ne v7, v10, :cond_8

    .line 543
    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 544
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 545
    iget-object v6, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\u672a\u4f5c\u7b54"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 546
    invoke-virtual {v6, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 547
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    const-string v7, "openq0"

    .line 550
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    move v7, v11

    goto/16 :goto_4

    .line 554
    :cond_9
    iget-object v7, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v7}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1800(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    :goto_6
    if-gt v8, v7, :cond_a

    .line 556
    iget-object v9, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v9}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "edit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    iget-object v12, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v12}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 557
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 559
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "openq"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :catch_0
    move-exception v6

    .line 567
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 570
    :cond_a
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 587
    :cond_b
    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Ltw/edu/kmu/act/EvlQuestionActivity$1;)V

    .line 588
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 589
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultAry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method
