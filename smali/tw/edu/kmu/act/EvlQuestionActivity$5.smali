.class Ltw/edu/kmu/act/EvlQuestionActivity$5;
.super Landroid/os/Handler;
.source "EvlQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V
    .locals 0

    .line 278
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 280
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 281
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 298
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 299
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    .line 300
    invoke-virtual {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    .line 301
    invoke-virtual {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    .line 302
    invoke-virtual {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/EvlQuestionActivity$5$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$5$2;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    .line 309
    invoke-virtual {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/EvlQuestionActivity$5$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$5$1;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 284
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 286
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 288
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "teafno"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 293
    :cond_4
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initViewPager idx is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$5;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->initViewPager(I)V

    .line 318
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
