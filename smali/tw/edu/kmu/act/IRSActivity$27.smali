.class Ltw/edu/kmu/act/IRSActivity$27;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->parseMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSActivity;

.field final synthetic val$ansTopic:Ljava/lang/String;

.field final synthetic val$questionId:Ljava/lang/String;

.field final synthetic val$questionType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1849
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRSActivity$27;->val$questionType:Ljava/lang/String;

    iput-object p3, p0, Ltw/edu/kmu/act/IRSActivity$27;->val$ansTopic:Ljava/lang/String;

    iput-object p4, p0, Ltw/edu/kmu/act/IRSActivity$27;->val$questionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1853
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$4100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "edit1"

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 1854
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1855
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "msgType"

    const-string v2, "1"

    .line 1857
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "questionType"

    .line 1858
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$27;->val$questionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userId"

    .line 1859
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userName"

    .line 1860
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$1900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "answer"

    .line 1861
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1862
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1863
    invoke-static {}, Ltw/edu/kmu/act/IRSActivity;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1864
    new-array v1, v0, [B

    const-string v1, "UTF-8"

    .line 1865
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1866
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v2, v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 1870
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v2, 0x3

    .line 1871
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$27;->val$ansTopic:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$27;->val$questionId:Ljava/lang/String;

    aput-object v0, v2, p1

    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1874
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1876
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3900(Ltw/edu/kmu/act/IRSActivity;)Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->dismiss()V

    .line 1877
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$4000(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1878
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$27;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$27;->val$questionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$27;->val$questionId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1880
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
