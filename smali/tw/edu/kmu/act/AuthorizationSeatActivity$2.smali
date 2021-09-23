.class Ltw/edu/kmu/act/AuthorizationSeatActivity$2;
.super Ljava/lang/Object;
.source "AuthorizationSeatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AuthorizationSeatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 155
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    const-class v1, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    const-string v1, "https://cc.kmu.edu.tw/cgi-bin/elearnpw.cgi"

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    .line 157
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Create Account & Password"

    goto :goto_0

    :cond_0
    const-string v1, "\u8a2d\u5b9a\u9ad8\u91ab\u6578\u4f4d\u5b78\u7fd2\u7cfb\u7d71\u5bc6\u78bc"

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fillWidth"

    const-string v1, "true"

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
