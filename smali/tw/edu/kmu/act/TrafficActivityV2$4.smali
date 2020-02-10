.class Ltw/edu/kmu/act/TrafficActivityV2$4;
.super Ljava/lang/Object;
.source "TrafficActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TrafficActivityV2;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TrafficActivityV2;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TrafficActivityV2;)V
    .locals 0

    .line 70
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficActivityV2$4;->this$0:Ltw/edu/kmu/act/TrafficActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 75
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficActivityV2$4;->this$0:Ltw/edu/kmu/act/TrafficActivityV2;

    invoke-virtual {v0}, Ltw/edu/kmu/act/TrafficActivityV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    const-string v1, "http://www.kmuh.org.tw/KMUHWeb/Pages/P01About/ShowContent.aspx?page=1-10-3.html"

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    .line 77
    iget-object v1, p0, Ltw/edu/kmu/act/TrafficActivityV2$4;->this$0:Ltw/edu/kmu/act/TrafficActivityV2;

    invoke-virtual {v1}, Ltw/edu/kmu/act/TrafficActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fillWidth"

    const-string v1, "true"

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficActivityV2$4;->this$0:Ltw/edu/kmu/act/TrafficActivityV2;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/TrafficActivityV2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
