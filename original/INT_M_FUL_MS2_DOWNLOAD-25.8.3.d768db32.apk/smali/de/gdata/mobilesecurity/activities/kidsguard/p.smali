.class Lde/gdata/mobilesecurity/activities/kidsguard/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;Landroid/view/View;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->d:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->a:Landroid/view/View;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 335
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->a:Landroid/view/View;

    const v1, 0x7f0b01f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 336
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 337
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->a:Landroid/view/View;

    const v2, 0x7f0b01f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 338
    const/4 v2, 0x0

    .line 340
    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->d:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 355
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->c:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->d:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->appIdentifier:Ljava/lang/String;

    int-to-long v4, v0

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->extendTimeForApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->d:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 359
    instance-of v2, v0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    if-eqz v2, :cond_0

    .line 360
    check-cast v0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->d:Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->updateViews(Landroid/content/Context;)V

    goto :goto_1

    .line 345
    :pswitch_0
    const/16 v0, 0xf

    .line 346
    goto :goto_0

    .line 348
    :pswitch_1
    const/16 v0, 0x1e

    .line 349
    goto :goto_0

    .line 351
    :pswitch_2
    const/16 v0, 0x3c

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/p;->c:Landroid/content/Context;

    const v1, 0x7f0d016e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 367
    :cond_2
    return-void

    .line 343
    :pswitch_data_0
    .packed-switch 0x7f0b01f4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
