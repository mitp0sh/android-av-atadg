.class public Lde/gdata/mobilesecurity/activities/applock/Selector;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private b:Z

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/support/v4/app/ListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;

.field private e:Landroid/support/v7/app/ActionBar;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x65

    sput v0, Lde/gdata/mobilesecurity/activities/applock/Selector;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->b:Z

    .line 34
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->c:Ljava/util/Vector;

    .line 134
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/applock/Selector;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->b:Z

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/applock/Selector;)[I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->h:[I

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/applock/Selector;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->c:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f02018f

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 44
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->setContentView(I)V

    .line 47
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 48
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    const-string v2, "lockedApps"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->b:Z

    .line 51
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->g:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->h:[I

    .line 57
    :goto_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->e:Landroid/support/v7/app/ActionBar;

    .line 58
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;-><init>(Lde/gdata/mobilesecurity/activities/applock/Selector;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->d:Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;

    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->d:Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->h:[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->setCount(I)V

    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->d:Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;->setActionBar(Landroid/support/v7/app/ActionBar;)V

    .line 61
    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->f:Landroid/support/v4/view/ViewPager;

    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->f:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->d:Lde/gdata/mobilesecurity/activities/applock/Selector$PagerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 64
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->h:[I

    array-length v0, v0

    if-gt v1, v0, :cond_4

    .line 67
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->h:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 89
    :goto_3
    iget-boolean v2, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->b:Z

    if-eqz v2, :cond_3

    .line 90
    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$TabListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->f:Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, p0, v3, v4}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 95
    :goto_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->h:[I

    goto/16 :goto_1

    .line 70
    :pswitch_0
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const v2, 0x7f0d0163

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar$Tab;->setIcon(I)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_3

    .line 77
    :cond_2
    const v2, 0x7f0d0162

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar$Tab;->setIcon(I)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_3

    .line 82
    :pswitch_1
    const v2, 0x7f0d0161

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f02018c

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar$Tab;->setIcon(I)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_3

    .line 85
    :pswitch_2
    const v2, 0x7f0d0160

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setText(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f02018b

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar$Tab;->setIcon(I)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_3

    .line 92
    :cond_3
    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->f:Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, p0, v3, v4}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_4

    .line 98
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/Selector;->e:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 99
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 54
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 105
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const v1, 0x7f0d0165

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/Selector;->setTitle(I)V

    .line 112
    :goto_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const v0, 0x7f0d015c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->setTitle(I)V

    .line 119
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_1
    const v1, 0x7f0d0164

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/Selector;->setTitle(I)V

    goto :goto_0

    .line 116
    :cond_2
    const v0, 0x7f0d015b

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->setTitle(I)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/Selector;->finish()V

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
