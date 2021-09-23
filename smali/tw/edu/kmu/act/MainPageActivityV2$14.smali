.class Ltw/edu/kmu/act/MainPageActivityV2$14;
.super Ljava/lang/Object;
.source "MainPageActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MainPageActivityV2;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 0

    .line 714
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$14;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 718
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$14;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const-class v1, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    .line 719
    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2$14;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const v2, 0x7f0c0037

    invoke-static {v1, v2}, Ltw/edu/kmu/act/MainPageActivityV2;->access$600(Ltw/edu/kmu/act/MainPageActivityV2;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    .line 720
    iget-object v1, p0, Ltw/edu/kmu/act/MainPageActivityV2$14;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const v2, 0x7f0c00c4

    invoke-static {v1, v2}, Ltw/edu/kmu/act/MainPageActivityV2;->access$600(Ltw/edu/kmu/act/MainPageActivityV2;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fillWidth"

    const-string v1, "true"

    .line 721
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$14;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
