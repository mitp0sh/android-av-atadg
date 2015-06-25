.class Lde/gdata/mobilesecurity/activities/applock/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/g;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/applock/g;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 562
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/g;->a:Landroid/view/View;

    const v2, 0x7f0b0113

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 563
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 567
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 591
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE protectedapps SET timeunlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE identifier = ? AND configuration IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Toddler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Teenager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/g;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "DenialFragment.onCreateDialog"

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 599
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 602
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/g;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->itemIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 603
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_1
    const-string v0, "DenialFragment.onCreateDialog"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/g;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->fragment:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->reloadApps()V

    .line 611
    return-void

    :pswitch_0
    move v0, v1

    .line 570
    goto :goto_0

    .line 572
    :pswitch_1
    const/16 v0, 0xf

    .line 573
    goto :goto_0

    .line 575
    :pswitch_2
    const/16 v0, 0x1e

    .line 576
    goto :goto_0

    .line 578
    :pswitch_3
    const/16 v0, 0x3c

    .line 579
    goto :goto_0

    .line 581
    :pswitch_4
    const/16 v0, 0x78

    .line 582
    goto :goto_0

    .line 584
    :pswitch_5
    const/16 v0, 0xf0

    .line 585
    goto :goto_0

    .line 604
    :catch_0
    move-exception v1

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 567
    :pswitch_data_0
    .packed-switch 0x7f0b0114
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
