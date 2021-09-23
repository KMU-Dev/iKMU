.class Ltw/edu/kmu/act/QuestionnaireActivity$1;
.super Ljava/lang/Object;
.source "QuestionnaireActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/QuestionnaireActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/QuestionnaireActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/QuestionnaireActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

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

    .line 81
    iget-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/QuestionnaireActivity;->access$100(Ltw/edu/kmu/act/QuestionnaireActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 83
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    const-class p4, Ltw/edu/kmu/act/WebActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "title"

    .line 84
    iget-object p4, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-virtual {p4}, Ltw/edu/kmu/act/QuestionnaireActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0c00cd

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "fillWidth"

    const-string p4, "true"

    .line 85
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "no"

    const-string p4, "anonymous"

    .line 86
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 88
    iget-object p3, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/QuestionnaireActivity;->access$200(Ltw/edu/kmu/act/QuestionnaireActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-boolean p3, p3, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    if-nez p3, :cond_0

    .line 90
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-virtual {p2}, Ltw/edu/kmu/act/QuestionnaireActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    .line 95
    :cond_0
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "http://mbms.kmu.edu.tw:8080/KmuQ/readQuestion.action?qid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "questionnaireID"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&answerer="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/QuestionnaireActivity;->access$200(Ltw/edu/kmu/act/QuestionnaireActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p4

    iget-object p4, p4, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "title"

    const-string p5, "questionnaireName"

    .line 96
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fillWidth"

    const-string p4, "true"

    .line 97
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "url"

    .line 98
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-static {}, Ltw/edu/kmu/act/QuestionnaireActivity;->access$300()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Exception\uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/QuestionnaireActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 112
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "http://mbms.kmu.edu.tw:8080/KmuQ/readQuestion.action?qid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "questionnaireID"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&answerer="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/QuestionnaireActivity;->access$200(Ltw/edu/kmu/act/QuestionnaireActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p4

    iget-object p4, p4, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "title"

    const-string p5, "questionnaireName"

    .line 113
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fillWidth"

    const-string p4, "true"

    .line 114
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "url"

    .line 115
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-static {}, Ltw/edu/kmu/act/QuestionnaireActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "questionnaire url is \uff1a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Ltw/edu/kmu/act/QuestionnaireActivity$1;->this$0:Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/QuestionnaireActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
