.class public Lde/gdata/mobilesecurity/fragments/ScanFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final DIALOG_FINISHED_SCAN_STATUS_CLEAN:I = 0xb122

.field public static final DIALOG_FINISHED_SCAN_STATUS_INFECTED:I = 0xb11f

.field public static final DIALOG_FINISHED_SCAN_STATUS_WARNING:I = 0xb124

.field public static final DIALOG_PROGRESS:I = 0x407634


# instance fields
.field private a:Lde/gdata/mobilesecurity/util/BasePreferences;

.field private b:Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/RadioGroup;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/Integer;

.field private l:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    new-instance v0, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->b:Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->k:Ljava/lang/Integer;

    return-void
.end method

.method public static getScanIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    const-string v1, "SCAN_SET_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v1, "SCAN_ADVANCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v1, "SCAN_FLIP_INDETERMINATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v1, "SCAN_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "SCAN_SET_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "SCAN_SET_UPDATE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "SCAN_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "SCAN_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "SERVICE_IS_RUNNING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "SCAN_PROGRESS_STEP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    return-object v0
.end method


# virtual methods
.method public OCLstartScan()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 172
    const/4 v0, 0x0

    .line 173
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->l:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 175
    :cond_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->a:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastScanWasSystemScan(Z)V

    .line 177
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->setFragmentIsRunning(Landroid/content/Context;Z)V

    .line 179
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 182
    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startAppScan(Landroid/content/Context;)V

    .line 184
    const-string v0, "SCAN_TYPE_IN_PROGRESS"

    const-string v3, "START_APP_SCAN"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    .line 195
    :goto_1
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startFileScan(Landroid/content/Context;)V

    .line 187
    const-string v0, "SCAN_TYPE_IN_PROGRESS"

    const-string v3, "START_FILE_SCAN"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0b0096

    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->a:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastScanWasSystemScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->l:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 136
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->a:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->setHasOptionsMenu(Z)V

    .line 63
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->a:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    const/16 v0, 0x332d

    const v1, 0x7f0d038c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 216
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 217
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0b033c

    const v6, 0x7f0b0338

    const/4 v5, 0x0

    const/16 v4, 0x8

    const v3, 0x7f0a005c

    .line 74
    const v0, 0x7f030094

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 80
    const v0, 0x7f0b0335

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->g:Landroid/widget/RadioGroup;

    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 83
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->f:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->f:Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/fragments/ar;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/ar;-><init>(Lde/gdata/mobilesecurity/fragments/ScanFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    const v0, 0x7f0b0339

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->c:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const v0, 0x7f0b033d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->e:Landroid/widget/ProgressBar;

    .line 97
    const v0, 0x7f0b033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->d:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0b0334

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->h:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0b0332

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->i:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0b0333

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->j:Landroid/view/View;

    .line 102
    const v0, 0x7f0b0337

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->l:Landroid/widget/RadioButton;

    .line 104
    const v0, 0x7f0b033f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    new-instance v2, Lde/gdata/mobilesecurity/fragments/as;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/as;-><init>(Lde/gdata/mobilesecurity/fragments/ScanFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0, v5}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->setServiceIsRunning(Z)V

    .line 113
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->isRunning(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictButtonWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const v0, 0x7f0b0343

    invoke-static {v1, v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/view/View;II)V

    .line 117
    invoke-static {v1, v6, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/view/View;II)V

    .line 118
    invoke-static {v1, v7, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/view/View;II)V

    .line 119
    const v0, 0x7f0b033f

    invoke-static {v1, v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/view/View;II)V

    .line 120
    invoke-static {v1, v7, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/view/View;II)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "contentFrame"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "contentFrame"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->k:Ljava/lang/Integer;

    .line 126
    :cond_1
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->setFragmentIsRunning(Landroid/content/Context;Z)V

    .line 69
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 70
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x332d

    if-ne v0, v1, :cond_0

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/intents/ScanPreferences;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->startActivity(Landroid/content/Intent;)V

    .line 226
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->setFragmentIsRunning(Landroid/content/Context;Z)V

    .line 159
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->setFragmentIsRunning(Landroid/content/Context;Z)V

    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 154
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method protected setServiceIsRunning(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 237
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->j:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->f:Landroid/widget/Button;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->g:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ScanFragment;->c:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    return-void

    :cond_0
    move v0, v2

    .line 237
    goto :goto_0

    :cond_1
    move v0, v2

    .line 238
    goto :goto_1

    :cond_2
    move v0, v2

    .line 239
    goto :goto_2

    :cond_3
    move v0, v2

    .line 240
    goto :goto_3

    :cond_4
    move v0, v2

    .line 241
    goto :goto_4

    :cond_5
    move v2, v1

    .line 242
    goto :goto_5
.end method
