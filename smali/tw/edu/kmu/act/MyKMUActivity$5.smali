.class Ltw/edu/kmu/act/MyKMUActivity$5;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$5;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 188
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$5;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MyKMUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    const-string v1, "https://cc.kmu.edu.tw/"

    .line 189
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    .line 190
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$5;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v1}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fillWidth"

    const-string v1, "true"

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$5;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
