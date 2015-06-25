.class public Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;
    .locals 1

    .prologue
    .line 285
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const v1, 0x7f0d0245

    const v4, 0x7f0d0240

    const v7, 0x1080027

    const/4 v10, 0x0

    .line 38
    sparse-switch p2, :sswitch_data_0

    .line 178
    const v0, 0x7f0d0238

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    :goto_0
    return-object v0

    .line 40
    :sswitch_0
    const v0, 0x7f0d0229

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 43
    :sswitch_1
    const v0, 0x7f0d022c

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 46
    :sswitch_2
    const v0, 0x7f0d022a

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 49
    :sswitch_3
    const v0, 0x7f0d0234

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 52
    :sswitch_4
    const v0, 0x7f0d0512

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_5
    const v0, 0x7f0d0233

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 58
    :sswitch_6
    const v0, 0x7f0d0226

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_7
    const v0, 0x7f0d022d

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_8
    const v0, 0x7f0d0236

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_9
    const v0, 0x7f0d0228

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_a
    const v0, 0x7f0d0237

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_b
    const v0, 0x7f0d0235

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 78
    :sswitch_c
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 81
    new-instance v5, Lde/gdata/mobilesecurity/updateserverconnection/util/h;

    invoke-direct {v5, v8, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/h;-><init>(Landroid/support/v4/app/DialogFragment;Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    .line 92
    new-instance v6, Lde/gdata/mobilesecurity/updateserverconnection/util/i;

    invoke-direct {v6, v8}, Lde/gdata/mobilesecurity/updateserverconnection/util/i;-><init>(Landroid/support/v4/app/DialogFragment;)V

    .line 101
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 106
    const-string v1, "ERROR_DIALOG_TAG"

    invoke-virtual {v0, v9, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v10}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    goto/16 :goto_0

    .line 112
    :sswitch_d
    const v0, 0x7f0d0221

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :sswitch_e
    const v0, 0x7f0d0222

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 118
    :sswitch_f
    const v0, 0x7f0d022b

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :sswitch_10
    const v0, 0x7f0d0232

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :sswitch_11
    const v0, 0x7f0d023b

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :sswitch_12
    const v0, 0x7f0d023f

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :sswitch_13
    const v0, 0x7f0d023e

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    :sswitch_14
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 137
    new-instance v5, Lde/gdata/mobilesecurity/updateserverconnection/util/c;

    const-class v0, Lde/gdata/mobilesecurity/intents/AccountManagementPre;

    invoke-direct {v5, p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/c;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 138
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/j;

    invoke-direct {v0, v8, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/j;-><init>(Landroid/support/v4/app/DialogFragment;Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    .line 149
    new-instance v6, Lde/gdata/mobilesecurity/updateserverconnection/util/k;

    invoke-direct {v6, v8}, Lde/gdata/mobilesecurity/updateserverconnection/util/k;-><init>(Landroid/support/v4/app/DialogFragment;)V

    .line 158
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d023d

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d0239

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 163
    const-string v1, "ERROR_DIALOG_TAG"

    invoke-virtual {v0, v9, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v10}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    move-object v0, v8

    .line 165
    goto/16 :goto_0

    .line 168
    :sswitch_15
    const v0, 0x7f0d0231

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :sswitch_16
    const v0, 0x7f0d0225

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    :sswitch_17
    const v0, 0x7f0d0227

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_17
        -0x6 -> :sswitch_16
        -0x5 -> :sswitch_13
        -0x4 -> :sswitch_12
        -0x3 -> :sswitch_14
        -0x2 -> :sswitch_11
        0x13fe -> :sswitch_9
        0x1647 -> :sswitch_0
        0x164b -> :sswitch_1
        0x164c -> :sswitch_2
        0x164d -> :sswitch_3
        0x164e -> :sswitch_5
        0x164f -> :sswitch_6
        0x1650 -> :sswitch_7
        0x1651 -> :sswitch_15
        0x1652 -> :sswitch_8
        0x1659 -> :sswitch_a
        0x165b -> :sswitch_b
        0x165c -> :sswitch_c
        0x165d -> :sswitch_f
        0x165e -> :sswitch_10
        0x1869b -> :sswitch_e
        0x1869c -> :sswitch_d
        0x1869f -> :sswitch_4
    .end sparse-switch
.end method

.method public static showErrorDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 4

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 299
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/n;

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/n;-><init>(Landroid/support/v4/app/DialogFragment;)V

    .line 308
    const v0, 0x7f0d0245

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, p1, v3, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 311
    const-string v2, "ERROR_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 313
    return-object v0
.end method

.method public static showErrorDialogWithFinish(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;
    .locals 7

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 327
    new-instance v4, Lde/gdata/mobilesecurity/updateserverconnection/util/b;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/updateserverconnection/util/b;-><init>(Landroid/app/Activity;)V

    .line 330
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/util/o;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/o;-><init>(Landroid/support/v4/app/DialogFragment;)V

    .line 339
    const v0, 0x7f0d0245

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x1080027

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 342
    const-string v1, "ERROR_DIALOG_TAG"

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 344
    return-object v0
.end method

.method public static showOKCancelAndOpenUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 8

    .prologue
    .line 387
    new-instance v5, Lde/gdata/mobilesecurity/updateserverconnection/util/d;

    invoke-direct {v5, p0, p2}, Lde/gdata/mobilesecurity/updateserverconnection/util/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 388
    new-instance v6, Lde/gdata/mobilesecurity/updateserverconnection/util/a;

    invoke-direct {v6}, Lde/gdata/mobilesecurity/updateserverconnection/util/a;-><init>()V

    .line 391
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 393
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/d;

    invoke-direct {v0, p0, p2}, Lde/gdata/mobilesecurity/updateserverconnection/util/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 395
    const v0, 0x7f0d0245

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 398
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 399
    const-string v1, "ERROR_DIALOG_TAG"

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 401
    return-object v0
.end method

.method public static showOKWithRestartAndOpenUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 4

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 358
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/d;

    invoke-direct {v2, p0, p2}, Lde/gdata/mobilesecurity/updateserverconnection/util/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 361
    new-instance v3, Lde/gdata/mobilesecurity/updateserverconnection/util/p;

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/p;-><init>(Landroid/support/v4/app/DialogFragment;)V

    .line 370
    const v0, 0x7f0d0245

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, p1, v3, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 373
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 374
    const-string v2, "ERROR_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method public static showOkDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;
    .locals 1

    .prologue
    .line 247
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static showOkDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 4

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 261
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/m;

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/m;-><init>(Landroid/support/v4/app/DialogFragment;)V

    .line 270
    const v0, 0x7f0d0245

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, p1, v3, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 273
    const-string v2, "ERROR_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 276
    return-object v0
.end method

.method public static showOkWithFinishAndOpenUrlDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 4

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 222
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/b;

    invoke-direct {v2, p0, p2}, Lde/gdata/mobilesecurity/updateserverconnection/util/b;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 223
    new-instance v3, Lde/gdata/mobilesecurity/updateserverconnection/util/l;

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/l;-><init>(Landroid/support/v4/app/DialogFragment;)V

    .line 232
    const v0, 0x7f0d0245

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, p1, v3, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 235
    const-string v2, "ERROR_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 237
    return-object v0
.end method

.method public static showOkWithFinishDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;
    .locals 1

    .prologue
    .line 188
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkWithFinishDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static showOkWithFinishDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 4

    .prologue
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 199
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/util/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/updateserverconnection/util/b;-><init>(Landroid/app/Activity;)V

    .line 202
    const v2, 0x7f0d0245

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, p1, v3, v1}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v1

    .line 205
    const-string v2, "ERROR_DIALOG_TAG"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 207
    return-object v1
.end method
