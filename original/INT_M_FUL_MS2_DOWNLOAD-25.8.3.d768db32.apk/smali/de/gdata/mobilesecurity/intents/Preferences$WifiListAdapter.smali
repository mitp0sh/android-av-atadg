.class public Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/intents/bq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/intents/bq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/intents/bq;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 498
    const v0, 0x1090004

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 493
    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->a:Landroid/content/Context;

    .line 495
    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->c:Ljava/util/ArrayList;

    .line 499
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->b:Landroid/view/LayoutInflater;

    .line 501
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->a:Landroid/content/Context;

    .line 502
    iput-object p3, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->c:Ljava/util/ArrayList;

    .line 503
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x1060007

    const v8, 0x1060005

    .line 517
    if-nez p2, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 519
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/intents/bq;

    .line 520
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 522
    const v1, 0x7f0b024c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 523
    const v2, 0x7f0b024d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 524
    const v3, 0x7f0b0049

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 526
    iget-object v4, v0, Lde/gdata/mobilesecurity/intents/bq;->a:Ljava/lang/String;

    const-string v6, "^\"(.*)\"$"

    const-string v7, "$1"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v4, v0, Lde/gdata/mobilesecurity/intents/bq;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v4, v0, Lde/gdata/mobilesecurity/intents/bq;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0d04f8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 531
    :cond_1
    iget-object v4, v0, Lde/gdata/mobilesecurity/intents/bq;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 533
    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/bq;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 534
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 541
    :goto_1
    return-object p2

    .line 531
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 537
    :cond_3
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Preferences$WifiListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/intents/bq;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/bq;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
