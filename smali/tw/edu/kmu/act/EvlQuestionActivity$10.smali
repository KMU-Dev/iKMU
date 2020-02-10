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

    .line 473
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iput p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$currentIndex:I

    iput-object p3, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 480
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
    const/4 v2, 0x0

    if-gt v1, p1, :cond_1

    .line 482
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$currentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 486
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u984c\u672a\u4f5c\u7b54"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v1, 0x11

    .line 487
    invoke-virtual {p1, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 488
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_9

    .line 493
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 497
    :goto_2
    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1400(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 498
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 500
    :try_start_0
    iget-object v4, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v4}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1400(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const-string v5, "teacher"

    .line 501
    iget-object v6, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v6}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "teafno"

    .line 502
    iget-object v6, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$map:Ljava/util/HashMap;

    const-string v7, "teafno"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deptno"

    .line 503
    iget-object v6, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->val$map:Ljava/util/HashMap;

    const-string v7, "deptNo"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const/4 v5, 0x1

    :goto_3
    const/16 v6, 0xa

    if-gt v5, v6, :cond_4

    .line 506
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v7}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    iget-object v6, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v6}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v6, "1"

    .line 510
    iget-object v7, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v7}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "2"

    iget-object v7, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v7}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 514
    :cond_4
    iget-object v5, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v5}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1800(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    :goto_4
    if-gt v6, v5, :cond_7

    .line 516
    iget-object v7, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v7}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "edit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    iget-object v10, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v10}, Ltw/edu/kmu/act/EvlQuestionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 517
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-ne v6, v0, :cond_5

    const-string v8, "openq"

    goto :goto_5

    :cond_5
    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    const-string v8, "openqx"

    goto :goto_5

    .line 518
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catch_0
    move-exception v4

    .line 526
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 529
    :cond_7
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 546
    :cond_8
    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;

    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity$10;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Ltw/edu/kmu/act/EvlQuestionActivity$1;)V

    .line 547
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 548
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

    :cond_9
    return-void
.end method
