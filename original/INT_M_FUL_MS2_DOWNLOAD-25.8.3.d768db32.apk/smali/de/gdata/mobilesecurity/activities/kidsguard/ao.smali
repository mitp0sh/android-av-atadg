.class Lde/gdata/mobilesecurity/activities/kidsguard/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 714
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->c(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 716
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionAnswer()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->d(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    .line 721
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 726
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1, v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 727
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1, v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardToddlerActive(Z)V

    .line 728
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->finish()V

    .line 730
    new-instance v1, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    const-string v2, "Private"

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 732
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 735
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->startActivity(Landroid/content/Intent;)V

    .line 737
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0308

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 746
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 747
    return-void

    .line 741
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d016d

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 743
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ao;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->finish()V

    goto :goto_0
.end method
