.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_CALL_ENABLED:Ljava/lang/String; = "callEnabled"

.field public static final EXTRA_PANIC_ACTION:Ljava/lang/String; = "panicAction"

.field public static WIZARD_ACTIVITIES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private f:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

.field private g:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->f:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    const v0, 0x7f030080

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 51
    const-string v0, "panicAction"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->f:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "panicAct "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->f:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 53
    const v0, 0x7f0b02fb

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 54
    const v1, 0x7f0b02f2

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->a:Landroid/widget/Button;

    .line 55
    const v1, 0x7f0b02f5

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->b:Landroid/widget/Button;

    .line 56
    const v1, 0x7f0b02f6

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->c:Landroid/widget/Button;

    .line 57
    const v1, 0x7f0b02f3

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->d:Landroid/widget/Button;

    .line 58
    const v1, 0x7f0b02fa

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->g:Landroid/widget/EditText;

    .line 60
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 62
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPanicButtonSender()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d03ee

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/b;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->a:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/c;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/c;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const-string v0, "callEnabled"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 86
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->b:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/d;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/d;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->c:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/e;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/e;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->d:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/f;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/f;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPanicButtonSender()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPanicButtonSender(Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    sget-object v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    const-string v1, "panicAction"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->f:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    sget-object v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 148
    :cond_0
    return-void

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->b()V

    return-void
.end method

.method public static endWizard()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->WIZARD_ACTIVITIES:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->WIZARD_ACTIVITIES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public getPositionForActionProfile(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 127
    .line 129
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 130
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 129
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 136
    :cond_1
    return v1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->overridePendingTransition(II)V

    .line 43
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->a()V

    .line 45
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->WIZARD_ACTIVITIES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method
