.class Ltw/edu/kmu/act/IRSActivity$30$2;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity$30;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/IRSActivity$30;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSActivity$30;)V
    .locals 0

    .line 2143
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 2150
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2151
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v1, v1, Ltw/edu/kmu/act/IRSActivity$30;->val$subQuList:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_9

    .line 2152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2153
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v3, v3, Ltw/edu/kmu/act/IRSActivity$30;->val$subQuList:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "subQuOrder"

    .line 2154
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "questionType"

    .line 2155
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    .line 2156
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const v7, 0x7f08004e

    const/16 v8, 0x11

    if-eqz v6, :cond_1

    .line 2157
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v3, v3, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/IRSActivity;->access$4100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioGroup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 2158
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    .line 2160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "order"

    .line 2161
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "ans"

    .line 2162
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2163
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_3

    .line 2166
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u984c\u5c1a\u672a\u4f5c\u7b54"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2167
    invoke-virtual {p1, v8, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2168
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string v6, "3"

    .line 2171
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, ""

    const-string v6, "optionList"

    .line 2174
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v6, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 2175
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 2176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkBox"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2177
    iget-object v11, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v11, v11, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v11}, Ltw/edu/kmu/act/IRSActivity;->access$4100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 2178
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Landroid/widget/CheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2179
    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v9, :cond_3

    goto :goto_2

    .line 2180
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object v6, v11

    goto :goto_1

    :cond_4
    const-string v3, ""

    .line 2185
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v2, "order"

    .line 2186
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ans"

    .line 2187
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2188
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_3

    .line 2191
    :cond_5
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u984c\u5c1a\u672a\u4f5c\u7b54"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2192
    invoke-virtual {p1, v8, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2193
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    const-string v3, "4"

    .line 2196
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2198
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v3, v3, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/IRSActivity;->access$4100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "edit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 2199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    .line 2200
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v2, "order"

    .line 2201
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ans"

    .line 2202
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2203
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 2206
    :cond_7
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u984c\u5c1a\u672a\u4f5c\u7b54"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2207
    invoke-virtual {p1, v8, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2208
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2216
    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msgType"

    const-string v3, "1"

    .line 2217
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "questionType"

    .line 2218
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v3, v3, Ltw/edu/kmu/act/IRSActivity$30;->val$questionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userId"

    .line 2219
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v3, v3, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/IRSActivity;->access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userName"

    .line 2220
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v3, v3, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/IRSActivity;->access$1900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ansList"

    .line 2221
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2222
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2224
    new-array v0, p2, [B

    const-string v0, "UTF-8"

    .line 2225
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2226
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 2231
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v1, v1, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v1, 0x3

    .line 2232
    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v3, v3, Ltw/edu/kmu/act/IRSActivity$30;->val$ansTopic:Ljava/lang/String;

    aput-object v3, v1, p2

    aput-object p1, v1, v2

    const/4 p1, 0x2

    iget-object p2, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object p2, p2, Ltw/edu/kmu/act/IRSActivity$30;->val$questionId:Ljava/lang/String;

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 2236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2239
    :goto_4
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$3900(Ltw/edu/kmu/act/IRSActivity;)Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    move-result-object p1

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->dismiss()V

    .line 2240
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$4000(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object p2, p2, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p2, p2, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2241
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRSActivity;->access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity$30;->val$questionId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$30$2;->this$1:Ltw/edu/kmu/act/IRSActivity$30;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity$30;->val$questionId:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2243
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
