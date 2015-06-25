.class public Lde/gdata/mobilesecurity/activities/logs/LogDetail;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# static fields
.field private static a:Lde/gdata/mobilesecurity/scan/LogEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a:Lde/gdata/mobilesecurity/scan/LogEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a:Lde/gdata/mobilesecurity/scan/LogEntry;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 46
    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->setContentView(I)V

    .line 48
    sget-object v0, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a:Lde/gdata/mobilesecurity/scan/LogEntry;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 53
    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 55
    const v0, 0x7f0b0280

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    sget-object v2, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->getImage()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    sget-object v0, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v2

    .line 59
    sget-object v0, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a:Lde/gdata/mobilesecurity/scan/LogEntry;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v3}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\(.*\\)"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 62
    const v0, 0x7f0b0281

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v5, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/scan/LogEntry;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v0, 0x7f0b0283

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v0, 0x7f0b0284

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    .line 69
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    new-instance v3, Lde/gdata/mobilesecurity/activities/logs/e;

    invoke-direct {v3, p0, v1, v4, v2}, Lde/gdata/mobilesecurity/activities/logs/e;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogDetail;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setLogEntry(Lde/gdata/mobilesecurity/scan/LogEntry;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->a:Lde/gdata/mobilesecurity/scan/LogEntry;

    .line 35
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->b()V

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->b()V

    .line 43
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 94
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogDetail;->finish()V

    .line 96
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
