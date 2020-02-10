.class Ltw/edu/kmu/act/IRS4TAActivity$2;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 185
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 191
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 193
    new-instance p1, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;

    iget-object v3, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p1, v3, v2}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    .line 194
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 196
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 198
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$400(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    new-instance p1, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;

    iget-object v3, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p1, v3, v2}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    .line 201
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 204
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    const-string v0, "\u8acb\u5148\u9078\u64c7\u984c\u5eab"

    .line 205
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "OK"

    goto :goto_0

    :cond_2
    const-string v0, "\u78ba\u5b9a"

    :goto_0
    new-instance v1, Ltw/edu/kmu/act/IRS4TAActivity$2$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRS4TAActivity$2$1;-><init>(Ltw/edu/kmu/act/IRS4TAActivity$2;)V

    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 213
    :cond_3
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "99"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 215
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$500(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 217
    new-instance p1, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;

    iget-object v3, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p1, v3, v2}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    .line 218
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 221
    :cond_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    const-string v0, "\u8acb\u5148\u9078\u64c7\u8a66\u5377"

    .line 222
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$2;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v0, :cond_5

    const-string v0, "OK"

    goto :goto_1

    :cond_5
    const-string v0, "\u78ba\u5b9a"

    :goto_1
    new-instance v1, Ltw/edu/kmu/act/IRS4TAActivity$2$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRS4TAActivity$2$2;-><init>(Ltw/edu/kmu/act/IRS4TAActivity$2;)V

    .line 223
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_6
    :goto_2
    return-void
.end method
