.class Ltw/edu/kmu/act/AppInstallActivity$1;
.super Ljava/lang/Object;
.source "AppInstallActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AppInstallActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AppInstallActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AppInstallActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Ltw/edu/kmu/act/AppInstallActivity$1;->this$0:Ltw/edu/kmu/act/AppInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 105
    iget-object p1, p0, Ltw/edu/kmu/act/AppInstallActivity$1;->this$0:Ltw/edu/kmu/act/AppInstallActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AppInstallActivity;->access$100(Ltw/edu/kmu/act/AppInstallActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "appId"

    .line 112
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 113
    iget-object p2, p0, Ltw/edu/kmu/act/AppInstallActivity$1;->this$0:Ltw/edu/kmu/act/AppInstallActivity;

    invoke-virtual {p2}, Ltw/edu/kmu/act/AppInstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 115
    iget-object p1, p0, Ltw/edu/kmu/act/AppInstallActivity$1;->this$0:Ltw/edu/kmu/act/AppInstallActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/AppInstallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "market://details?id="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/AppInstallActivity$1;->this$0:Ltw/edu/kmu/act/AppInstallActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/AppInstallActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
