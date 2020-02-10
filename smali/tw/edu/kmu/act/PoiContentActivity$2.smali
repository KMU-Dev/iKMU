.class Ltw/edu/kmu/act/PoiContentActivity$2;
.super Ljava/lang/Object;
.source "PoiContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/PoiContentActivity;->addBenefitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/PoiContentActivity;

.field final synthetic val$benefitData:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/PoiContentActivity;Ljava/util/HashMap;)V
    .locals 0

    .line 252
    iput-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->val$benefitData:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://mbms.kmu.edu.tw:8080/KmuWS/ws/cdLogBenefit?uuid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/PoiContentActivity;->access$200(Ltw/edu/kmu/act/PoiContentActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v0

    iget-object v0, v0, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&brandid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/PoiContentActivity;->access$100(Ltw/edu/kmu/act/PoiContentActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "serialNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&benefitid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->val$benefitData:Ljava/util/HashMap;

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/PoiContentActivity;->addLogByFuncName(Ljava/lang/String;)V

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->val$benefitData:Ljava/util/HashMap;

    const-string v1, "secondSlogan"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u512a\u60e0\u5167\u5bb9:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->val$benefitData:Ljava/util/HashMap;

    const-string v1, "secondSlogan"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u512a\u60e0\u671f\u9593:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->val$benefitData:Ljava/util/HashMap;

    const-string v1, "startDate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->val$benefitData:Ljava/util/HashMap;

    const-string v1, "endDate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity$2;->this$0:Ltw/edu/kmu/act/PoiContentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u512a\u60e0\u8a0a\u606f"

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u78ba\u5b9a"

    new-instance v1, Ltw/edu/kmu/act/PoiContentActivity$2$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/PoiContentActivity$2$1;-><init>(Ltw/edu/kmu/act/PoiContentActivity$2;)V

    .line 262
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
