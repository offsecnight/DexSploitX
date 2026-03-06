.class public Landroidx/activity/ComponentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "ComponentActivity.kt"

# interfaces
.implements Landroidx/activity/contextaware/ContextAware;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/activity/OnBackPressedDispatcherOwner;
.implements Landroidx/navigationevent/NavigationEventDispatcherOwner;
.implements Landroidx/activity/result/ActivityResultRegistryOwner;
.implements Landroidx/activity/result/ActivityResultCaller;
.implements Landroidx/core/content/OnConfigurationChangedProvider;
.implements Landroidx/core/content/OnTrimMemoryProvider;
.implements Landroidx/core/app/OnNewIntentProvider;
.implements Landroidx/core/app/OnMultiWindowModeChangedProvider;
.implements Landroidx/core/app/OnPictureInPictureModeChangedProvider;
.implements Landroidx/core/app/OnUserLeaveHintProvider;
.implements Landroidx/core/view/MenuHost;
.implements Landroidx/activity/FullyDrawnReporterOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$Companion;,
        Landroidx/activity/ComponentActivity$NonConfigurationInstances;,
        Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;,
        Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fc\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0008\u0016\u0018\u0000 \u00c8\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b2\u00020\u000c2\u00020\r2\u00020\u000e2\u00020\u000f2\u00020\u00102\u00020\u00112\u00020\u0012:\u0008\u00c5\u0001\u00c6\u0001\u00c7\u0001\u00c8\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014B\u0013\u0008\u0017\u0012\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0017J\u0012\u0010D\u001a\u00020E2\u0008\u0010F\u001a\u0004\u0018\u00010GH\u0014J\u0010\u0010H\u001a\u00020E2\u0006\u0010I\u001a\u00020GH\u0015J\u0008\u0010J\u001a\u0004\u0018\u00010KJ\n\u0010L\u001a\u0004\u0018\u00010KH\u0017J\u0012\u0010P\u001a\u00020E2\u0008\u0008\u0001\u0010Q\u001a\u00020\u0016H\u0016J\u0012\u0010P\u001a\u00020E2\u0008\u0010R\u001a\u0004\u0018\u00010SH\u0016J\u001c\u0010P\u001a\u00020E2\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0016J\u001c\u0010V\u001a\u00020E2\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0016J\u0008\u0010W\u001a\u00020EH\u0017J\n\u0010X\u001a\u0004\u0018\u00010YH\u0016J\u000e\u0010Z\u001a\u00020E2\u0006\u0010[\u001a\u00020\\J\u000e\u0010]\u001a\u00020E2\u0006\u0010[\u001a\u00020\\J\"\u0010^\u001a\u00020=2\u0006\u0010_\u001a\u00020\u00162\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010`\u001a\u00020aH\u0016J\u0018\u0010b\u001a\u00020=2\u0006\u0010_\u001a\u00020\u00162\u0006\u0010`\u001a\u00020aH\u0016J\u0018\u0010c\u001a\u00020=2\u0006\u0010_\u001a\u00020\u00162\u0006\u0010d\u001a\u00020eH\u0016J\u0018\u0010f\u001a\u00020E2\u0006\u0010_\u001a\u00020\u00162\u0006\u0010`\u001a\u00020aH\u0016J\u0010\u0010g\u001a\u00020E2\u0006\u0010h\u001a\u00020iH\u0016J\u0018\u0010g\u001a\u00020E2\u0006\u0010h\u001a\u00020i2\u0006\u0010j\u001a\u00020\u0003H\u0016J \u0010g\u001a\u00020E2\u0006\u0010h\u001a\u00020i2\u0006\u0010j\u001a\u00020\u00032\u0006\u0010k\u001a\u00020lH\u0017J\u0010\u0010m\u001a\u00020E2\u0006\u0010h\u001a\u00020iH\u0016J\u0008\u0010n\u001a\u00020EH\u0016J\u0008\u0010v\u001a\u00020EH\u0002J\t\u0010\u0080\u0001\u001a\u00020EH\u0017J\u0013\u0010\u008a\u0001\u001a\u00020E2\u0008\u0010\u008b\u0001\u001a\u00030\u0082\u0001H\u0003J\u001b\u0010\u0090\u0001\u001a\u00020E2\u0007\u0010\u0091\u0001\u001a\u0002052\u0007\u0010\u0092\u0001\u001a\u00020\u0016H\u0017J&\u0010\u0090\u0001\u001a\u00020E2\u0007\u0010\u0091\u0001\u001a\u0002052\u0007\u0010\u0092\u0001\u001a\u00020\u00162\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010GH\u0017JB\u0010\u0094\u0001\u001a\u00020E2\u0008\u0010\u0091\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u0092\u0001\u001a\u00020\u00162\t\u0010\u0096\u0001\u001a\u0004\u0018\u0001052\u0007\u0010\u0097\u0001\u001a\u00020\u00162\u0007\u0010\u0098\u0001\u001a\u00020\u00162\u0007\u0010\u0099\u0001\u001a\u00020\u0016H\u0017JM\u0010\u0094\u0001\u001a\u00020E2\u0008\u0010\u0091\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u0092\u0001\u001a\u00020\u00162\t\u0010\u0096\u0001\u001a\u0004\u0018\u0001052\u0007\u0010\u0097\u0001\u001a\u00020\u00162\u0007\u0010\u0098\u0001\u001a\u00020\u00162\u0007\u0010\u0099\u0001\u001a\u00020\u00162\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010GH\u0017J&\u0010\u009a\u0001\u001a\u00020E2\u0007\u0010\u0092\u0001\u001a\u00020\u00162\u0007\u0010\u009b\u0001\u001a\u00020\u00162\t\u0010\u009c\u0001\u001a\u0004\u0018\u000105H\u0015J3\u0010\u009d\u0001\u001a\u00020E2\u0007\u0010\u0092\u0001\u001a\u00020\u00162\u000f\u0010\u009e\u0001\u001a\n\u0012\u0005\u0012\u00030\u00a0\u00010\u009f\u00012\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0017\u00a2\u0006\u0003\u0010\u00a3\u0001JO\u0010\u00a4\u0001\u001a\n\u0012\u0005\u0012\u0003H\u00a6\u00010\u00a5\u0001\"\u0005\u0008\u0000\u0010\u00a6\u0001\"\u0005\u0008\u0001\u0010\u00a7\u00012\u0016\u0010\u00a8\u0001\u001a\u0011\u0012\u0005\u0012\u0003H\u00a6\u0001\u0012\u0005\u0012\u0003H\u00a7\u00010\u00a9\u00012\u0007\u0010\u00aa\u0001\u001a\u00020,2\u000f\u0010\u00ab\u0001\u001a\n\u0012\u0005\u0012\u0003H\u00a7\u00010\u00ac\u0001JF\u0010\u00a4\u0001\u001a\n\u0012\u0005\u0012\u0003H\u00a6\u00010\u00a5\u0001\"\u0005\u0008\u0000\u0010\u00a6\u0001\"\u0005\u0008\u0001\u0010\u00a7\u00012\u0016\u0010\u00a8\u0001\u001a\u0011\u0012\u0005\u0012\u0003H\u00a6\u0001\u0012\u0005\u0012\u0003H\u00a7\u00010\u00a9\u00012\u000f\u0010\u00ab\u0001\u001a\n\u0012\u0005\u0012\u0003H\u00a7\u00010\u00ac\u0001J\u0012\u0010\u00ad\u0001\u001a\u00020E2\u0007\u0010\u00ae\u0001\u001a\u000202H\u0017J\u0015\u0010\u00af\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020201J\u0015\u0010\u00b0\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020201J\u0012\u0010\u00b1\u0001\u001a\u00020E2\u0007\u0010\u00b2\u0001\u001a\u00020\u0016H\u0017J\u0015\u0010\u00b3\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u001601J\u0015\u0010\u00b4\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u001601J\u0012\u0010\u00b5\u0001\u001a\u00020E2\u0007\u0010\u0091\u0001\u001a\u000205H\u0015J\u0015\u0010\u00b6\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020501J\u0015\u0010\u00b7\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020501J\u0012\u0010\u00b8\u0001\u001a\u00020E2\u0007\u0010\u00b9\u0001\u001a\u00020=H\u0017J\u001b\u0010\u00b8\u0001\u001a\u00020E2\u0007\u0010\u00b9\u0001\u001a\u00020=2\u0007\u0010\u00ae\u0001\u001a\u000202H\u0017J\u0015\u0010\u00ba\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020701J\u0015\u0010\u00bb\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020701J\u0012\u0010\u00bc\u0001\u001a\u00020E2\u0007\u0010\u00bd\u0001\u001a\u00020=H\u0017J\u001b\u0010\u00bc\u0001\u001a\u00020E2\u0007\u0010\u00bd\u0001\u001a\u00020=2\u0007\u0010\u00ae\u0001\u001a\u000202H\u0017J\u0015\u0010\u00be\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020901J\u0015\u0010\u00bf\u0001\u001a\u00020E2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020901J\t\u0010\u00c0\u0001\u001a\u00020EH\u0015J\u000f\u0010\u00c1\u0001\u001a\u00020E2\u0006\u0010[\u001a\u00020;J\u000f\u0010\u00c2\u0001\u001a\u00020E2\u0006\u0010[\u001a\u00020;J\t\u0010\u00c3\u0001\u001a\u00020EH\u0016J\t\u0010\u00c4\u0001\u001a\u00020\"H\u0002R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001e\u0010\u0014R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010#\u001a\u00020$8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008%\u0010&R\u0012\u0010\u0015\u001a\u00020\u00168\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010+\u001a\u00020,\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u001a\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002020100X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160100X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002050100X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00106\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070100X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002090100X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u0008\u0012\u0004\u0012\u00020;00X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010?\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010(\u001a\u0004\u0008A\u0010BR\u0016\u0010M\u001a\u0004\u0018\u00010K8WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR\u0014\u0010o\u001a\u00020p8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010rR\u0014\u0010s\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010uR\u001b\u0010w\u001a\u00020x8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008{\u0010(\u001a\u0004\u0008y\u0010zR\u0014\u0010|\u001a\u00020}8WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008~\u0010\u007fR \u0010\u0081\u0001\u001a\u00030\u0082\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0085\u0001\u0010(\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0086\u0001\u001a\u00030\u0087\u00018VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u0015\u0010\u008c\u0001\u001a\u00030\u008d\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u00a8\u0006\u00c9\u0001"
    }
    d2 = {
        "Landroidx/activity/ComponentActivity;",
        "Landroidx/core/app/ComponentActivity;",
        "Landroidx/activity/contextaware/ContextAware;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "Landroidx/lifecycle/HasDefaultViewModelProviderFactory;",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "Landroidx/activity/OnBackPressedDispatcherOwner;",
        "Landroidx/navigationevent/NavigationEventDispatcherOwner;",
        "Landroidx/activity/result/ActivityResultRegistryOwner;",
        "Landroidx/activity/result/ActivityResultCaller;",
        "Landroidx/core/content/OnConfigurationChangedProvider;",
        "Landroidx/core/content/OnTrimMemoryProvider;",
        "Landroidx/core/app/OnNewIntentProvider;",
        "Landroidx/core/app/OnMultiWindowModeChangedProvider;",
        "Landroidx/core/app/OnPictureInPictureModeChangedProvider;",
        "Landroidx/core/app/OnUserLeaveHintProvider;",
        "Landroidx/core/view/MenuHost;",
        "Landroidx/activity/FullyDrawnReporterOwner;",
        "<init>",
        "()V",
        "contentLayoutId",
        "",
        "(I)V",
        "contextAwareHelper",
        "Landroidx/activity/contextaware/ContextAwareHelper;",
        "menuHostHelper",
        "Landroidx/core/view/MenuHostHelper;",
        "savedStateRegistryController",
        "Landroidx/savedstate/SavedStateRegistryController;",
        "getSavedStateRegistryController$annotations",
        "_viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "reportFullyDrawnExecutor",
        "Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;",
        "fullyDrawnReporter",
        "Landroidx/activity/FullyDrawnReporter;",
        "getFullyDrawnReporter",
        "()Landroidx/activity/FullyDrawnReporter;",
        "fullyDrawnReporter$delegate",
        "Lkotlin/Lazy;",
        "nextLocalRequestCode",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "activityResultRegistry",
        "Landroidx/activity/result/ActivityResultRegistry;",
        "getActivityResultRegistry",
        "()Landroidx/activity/result/ActivityResultRegistry;",
        "onConfigurationChangedListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/core/util/Consumer;",
        "Landroid/content/res/Configuration;",
        "onTrimMemoryListeners",
        "onNewIntentListeners",
        "Landroid/content/Intent;",
        "onMultiWindowModeChangedListeners",
        "Landroidx/core/app/MultiWindowModeChangedInfo;",
        "onPictureInPictureModeChangedListeners",
        "Landroidx/core/app/PictureInPictureModeChangedInfo;",
        "onUserLeaveHintListeners",
        "Ljava/lang/Runnable;",
        "dispatchingOnMultiWindowModeChanged",
        "",
        "dispatchingOnPictureInPictureModeChanged",
        "onBackPressedInput",
        "Landroidx/navigationevent/DirectNavigationEventInput;",
        "getOnBackPressedInput",
        "()Landroidx/navigationevent/DirectNavigationEventInput;",
        "onBackPressedInput$delegate",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "onRetainNonConfigurationInstance",
        "",
        "onRetainCustomNonConfigurationInstance",
        "lastCustomNonConfigurationInstance",
        "getLastCustomNonConfigurationInstance",
        "()Ljava/lang/Object;",
        "setContentView",
        "layoutResID",
        "view",
        "Landroid/view/View;",
        "params",
        "Landroid/view/ViewGroup$LayoutParams;",
        "addContentView",
        "initializeViewTreeOwners",
        "peekAvailableContext",
        "Landroid/content/Context;",
        "addOnContextAvailableListener",
        "listener",
        "Landroidx/activity/contextaware/OnContextAvailableListener;",
        "removeOnContextAvailableListener",
        "onPreparePanel",
        "featureId",
        "menu",
        "Landroid/view/Menu;",
        "onCreatePanelMenu",
        "onMenuItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onPanelClosed",
        "addMenuProvider",
        "provider",
        "Landroidx/core/view/MenuProvider;",
        "owner",
        "state",
        "Landroidx/lifecycle/Lifecycle$State;",
        "removeMenuProvider",
        "invalidateMenu",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "getLifecycle",
        "()Landroidx/lifecycle/Lifecycle;",
        "viewModelStore",
        "getViewModelStore",
        "()Landroidx/lifecycle/ViewModelStore;",
        "ensureViewModelStore",
        "defaultViewModelProviderFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "getDefaultViewModelProviderFactory",
        "()Landroidx/lifecycle/ViewModelProvider$Factory;",
        "defaultViewModelProviderFactory$delegate",
        "defaultViewModelCreationExtras",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "getDefaultViewModelCreationExtras",
        "()Landroidx/lifecycle/viewmodel/CreationExtras;",
        "onBackPressed",
        "onBackPressedDispatcher",
        "Landroidx/activity/OnBackPressedDispatcher;",
        "getOnBackPressedDispatcher",
        "()Landroidx/activity/OnBackPressedDispatcher;",
        "onBackPressedDispatcher$delegate",
        "navigationEventDispatcher",
        "Landroidx/navigationevent/NavigationEventDispatcher;",
        "getNavigationEventDispatcher",
        "()Landroidx/navigationevent/NavigationEventDispatcher;",
        "addObserverForBackInvoker",
        "dispatcher",
        "savedStateRegistry",
        "Landroidx/savedstate/SavedStateRegistry;",
        "getSavedStateRegistry",
        "()Landroidx/savedstate/SavedStateRegistry;",
        "startActivityForResult",
        "intent",
        "requestCode",
        "options",
        "startIntentSenderForResult",
        "Landroid/content/IntentSender;",
        "fillInIntent",
        "flagsMask",
        "flagsValues",
        "extraFlags",
        "onActivityResult",
        "resultCode",
        "data",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "registerForActivityResult",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "I",
        "O",
        "contract",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "registry",
        "callback",
        "Landroidx/activity/result/ActivityResultCallback;",
        "onConfigurationChanged",
        "newConfig",
        "addOnConfigurationChangedListener",
        "removeOnConfigurationChangedListener",
        "onTrimMemory",
        "level",
        "addOnTrimMemoryListener",
        "removeOnTrimMemoryListener",
        "onNewIntent",
        "addOnNewIntentListener",
        "removeOnNewIntentListener",
        "onMultiWindowModeChanged",
        "isInMultiWindowMode",
        "addOnMultiWindowModeChangedListener",
        "removeOnMultiWindowModeChangedListener",
        "onPictureInPictureModeChanged",
        "isInPictureInPictureMode",
        "addOnPictureInPictureModeChangedListener",
        "removeOnPictureInPictureModeChangedListener",
        "onUserLeaveHint",
        "addOnUserLeaveHintListener",
        "removeOnUserLeaveHintListener",
        "reportFullyDrawn",
        "createFullyDrawnExecutor",
        "NonConfigurationInstances",
        "ReportFullyDrawnExecutor",
        "ReportFullyDrawnExecutorImpl",
        "Companion",
        "activity"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ACTIVITY_RESULT_TAG:Ljava/lang/String; = "android:support:activity-result"

.field private static final Companion:Landroidx/activity/ComponentActivity$Companion;


# instance fields
.field private _viewModelStore:Landroidx/lifecycle/ViewModelStore;

.field private final activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

.field private contentLayoutId:I

.field private final contextAwareHelper:Landroidx/activity/contextaware/ContextAwareHelper;

.field private final defaultViewModelProviderFactory$delegate:Lkotlin/Lazy;

.field private dispatchingOnMultiWindowModeChanged:Z

.field private dispatchingOnPictureInPictureModeChanged:Z

.field private final fullyDrawnReporter$delegate:Lkotlin/Lazy;

.field private final menuHostHelper:Landroidx/core/view/MenuHostHelper;

.field private final nextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final onBackPressedDispatcher$delegate:Lkotlin/Lazy;

.field private final onBackPressedInput$delegate:Lkotlin/Lazy;

.field private final onConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/res/Configuration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/MultiWindowModeChangedInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/PictureInPictureModeChangedInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onUserLeaveHintListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

.field private final savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;


# direct methods
.method public static synthetic $r8$lambda$54BeH8ZsB-ru0CXI2CCSP2syNys(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentActivity;->_init_$lambda$1(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7IJBVrN0sHyidCAZufWEJFc7-yY(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/activity/ComponentActivity;->onBackPressedDispatcher_delegate$lambda$0$1$0(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7aWCLmlNPTirEoC8eOYg0rEvmus(Landroidx/activity/ComponentActivity;)Landroidx/activity/OnBackPressedDispatcher;
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->onBackPressedDispatcher_delegate$lambda$0(Landroidx/activity/ComponentActivity;)Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G6Thfp3wAqF9QgDIJrKyBT1uzss(Landroidx/activity/ComponentActivity;)Landroidx/lifecycle/SavedStateViewModelFactory;
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->defaultViewModelProviderFactory_delegate$lambda$0(Landroidx/activity/ComponentActivity;)Landroidx/lifecycle/SavedStateViewModelFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QUUwrpYSdd6n6dD7wrAaa0S4oXg(Landroidx/activity/ComponentActivity;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->_init_$lambda$3(Landroidx/activity/ComponentActivity;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XCwb6u5X87zpWrZW4Zmu6tsKQC8(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->addObserverForBackInvoker$lambda$0(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xj9c8VIP9DfEvaTmZt0ejAuC4a4(Landroidx/activity/ComponentActivity;)Landroidx/activity/FullyDrawnReporter;
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->fullyDrawnReporter_delegate$lambda$0(Landroidx/activity/ComponentActivity;)Landroidx/activity/FullyDrawnReporter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cI7dwLT0wnPzJ9a3oRpjgUF1USM(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->menuHostHelper$lambda$0(Landroidx/activity/ComponentActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g6d1IyBXWIL5aeSAzXsZMVuYCQs(Landroidx/activity/ComponentActivity;)Landroidx/navigationevent/DirectNavigationEventInput;
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->onBackPressedInput_delegate$lambda$0(Landroidx/activity/ComponentActivity;)Landroidx/navigationevent/DirectNavigationEventInput;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h6vvr6zUWA2U1fE-0KsKpOgpr28(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentActivity;->_init_$lambda$2(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vCwjfXDiSGcirCy4I008VOiJ_lw(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->onBackPressedDispatcher_delegate$lambda$0$0(Landroidx/activity/ComponentActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJ5MHcSJed_CjC7r4OWD0UxyJsQ(Landroidx/activity/ComponentActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->fullyDrawnReporter_delegate$lambda$0$0(Landroidx/activity/ComponentActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yPQlaAoRiY-RJ3IY_TqzUUTrVH0(Landroidx/activity/ComponentActivity;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/activity/ComponentActivity;->_init_$lambda$4(Landroidx/activity/ComponentActivity;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/ComponentActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/ComponentActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/activity/ComponentActivity;->Companion:Landroidx/activity/ComponentActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 111
    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    .line 135
    new-instance v0, Landroidx/activity/contextaware/ContextAwareHelper;

    invoke-direct {v0}, Landroidx/activity/contextaware/ContextAwareHelper;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->contextAwareHelper:Landroidx/activity/contextaware/ContextAwareHelper;

    .line 136
    new-instance v0, Landroidx/core/view/MenuHostHelper;

    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    .line 139
    sget-object v0, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    move-object v1, p0

    check-cast v1, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistryController$Companion;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 143
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->createFullyDrawnExecutor()Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    move-result-object v2

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    .line 144
    new-instance v2, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda4;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->fullyDrawnReporter$delegate:Lkotlin/Lazy;

    .line 149
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->nextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 157
    new-instance v2, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v2, Landroidx/activity/result/ActivityResultRegistry;

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    .line 233
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->onConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 234
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->onTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 235
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->onNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 237
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->onMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 239
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 240
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->onUserLeaveHintListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 246
    new-instance v2, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->onBackPressedInput$delegate:Lkotlin/Lazy;

    .line 258
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v3, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda6;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v3, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 273
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v3, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda7;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v3, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 287
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    .line 288
    new-instance v3, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v3, Landroidx/lifecycle/LifecycleObserver;

    .line 287
    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 295
    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->performAttach()V

    .line 296
    invoke-static {v1}, Landroidx/lifecycle/SavedStateHandleSupport;->enableSavedStateHandles(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 300
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda8;-><init>(Landroidx/activity/ComponentActivity;)V

    const-string v2, "android:support:activity-result"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 305
    new-instance v0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda9;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 556
    new-instance v0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->defaultViewModelProviderFactory$delegate:Lkotlin/Lazy;

    .line 606
    new-instance v0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda11;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->onBackPressedDispatcher$delegate:Lkotlin/Lazy;

    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 322
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 323
    iput p1, p0, Landroidx/activity/ComponentActivity;->contentLayoutId:I

    return-void
.end method

.method private static final _init_$lambda$1(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 268
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method

.method private static final _init_$lambda$2(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 277
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->contextAwareHelper:Landroidx/activity/contextaware/ContextAwareHelper;

    invoke-virtual {p1}, Landroidx/activity/contextaware/ContextAwareHelper;->clearAvailableContext()V

    .line 279
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    .line 280
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 282
    :cond_0
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    invoke-interface {p0}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;->activityDestroyed()V

    :cond_1
    return-void
.end method

.method private static final _init_$lambda$3(Landroidx/activity/ComponentActivity;)Landroid/os/Bundle;
    .locals 1

    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultRegistry;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static final _init_$lambda$4(Landroidx/activity/ComponentActivity;Landroid/content/Context;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object p1

    const-string v0, "android:support:activity-result"

    invoke-virtual {p1, v0}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 309
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultRegistry;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$ensureViewModelStore(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->ensureViewModelStore()V

    return-void
.end method

.method private final addObserverForBackInvoker(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2

    .line 655
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda2;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;)V

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private static final addObserverForBackInvoker$lambda$0(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "event"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p3, p2, :cond_0

    .line 658
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    const-string p2, "getOnBackInvokedDispatcher(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    :cond_0
    return-void
.end method

.method private final createFullyDrawnExecutor()Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;
    .locals 1

    .line 1039
    new-instance v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    invoke-direct {v0, p0}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    return-object v0
.end method

.method private static final defaultViewModelProviderFactory_delegate$lambda$0(Landroidx/activity/ComponentActivity;)Landroidx/lifecycle/SavedStateViewModelFactory;
    .locals 4

    .line 557
    new-instance v0, Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, p0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private final ensureViewModelStore()V
    .locals 1

    .line 544
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->_viewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_1

    .line 545
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->_viewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 550
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->_viewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_1

    .line 551
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->_viewModelStore:Landroidx/lifecycle/ViewModelStore;

    :cond_1
    return-void
.end method

.method private static final fullyDrawnReporter_delegate$lambda$0(Landroidx/activity/ComponentActivity;)Landroidx/activity/FullyDrawnReporter;
    .locals 3

    .line 145
    new-instance v0, Landroidx/activity/FullyDrawnReporter;

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1, v2}, Landroidx/activity/FullyDrawnReporter;-><init>(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final fullyDrawnReporter_delegate$lambda$0$0(Landroidx/activity/ComponentActivity;)Lkotlin/Unit;
    .locals 0

    .line 145
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->reportFullyDrawn()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getOnBackPressedInput()Landroidx/navigationevent/DirectNavigationEventInput;
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onBackPressedInput$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigationevent/DirectNavigationEventInput;

    return-object v0
.end method

.method private static synthetic getSavedStateRegistryController$annotations()V
    .locals 0

    return-void
.end method

.method private static final menuHostHelper$lambda$0(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 136
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    return-void
.end method

.method private static final onBackPressedDispatcher_delegate$lambda$0(Landroidx/activity/ComponentActivity;)Landroidx/activity/OnBackPressedDispatcher;
    .locals 3

    .line 607
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 630
    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 607
    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    .line 631
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    .line 632
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 637
    :cond_0
    invoke-direct {p0, v0}, Landroidx/activity/ComponentActivity;->addObserverForBackInvoker(Landroidx/activity/OnBackPressedDispatcher;)V

    :cond_1
    return-object v0
.end method

.method private static final onBackPressedDispatcher_delegate$lambda$0$0(Landroidx/activity/ComponentActivity;)V
    .locals 2

    .line 613
    :try_start_0
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 620
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 621
    const-string v1, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    .line 620
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    throw p0

    :catch_1
    move-exception p0

    .line 615
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 616
    :cond_1
    throw p0
.end method

.method private static final onBackPressedDispatcher_delegate$lambda$0$1$0(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;->addObserverForBackInvoker(Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method

.method private static final onBackPressedInput_delegate$lambda$0(Landroidx/activity/ComponentActivity;)Landroidx/navigationevent/DirectNavigationEventInput;
    .locals 2

    .line 247
    new-instance v0, Landroidx/navigationevent/DirectNavigationEventInput;

    invoke-direct {v0}, Landroidx/navigationevent/DirectNavigationEventInput;-><init>()V

    .line 248
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object p0

    move-object v1, v0

    check-cast v1, Landroidx/navigationevent/NavigationEventInput;

    invoke-virtual {p0, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->addInput(Landroidx/navigationevent/NavigationEventInput;)V

    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 415
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->initializeViewTreeOwners()V

    .line 416
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;->viewCreated(Landroid/view/View;)V

    .line 417
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->contextAwareHelper:Landroidx/activity/contextaware/ContextAwareHelper;

    invoke-virtual {v0, p1}, Landroidx/activity/contextaware/ContextAwareHelper;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/MultiWindowModeChangedInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnNewIntentListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/PictureInPictureModeChangedInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnTrimMemoryListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnUserLeaveHintListener(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onUserLeaveHintListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    return-object v0
.end method

.method public getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 4

    .line 569
    new-instance v0, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>(Landroidx/lifecycle/viewmodel/CreationExtras;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 570
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 571
    sget-object v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 573
    :cond_0
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 574
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 577
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->DEFAULT_ARGS_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 579
    :cond_2
    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 556
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->defaultViewModelProviderFactory$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public getFullyDrawnReporter()Landroidx/activity/FullyDrawnReporter;
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->fullyDrawnReporter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/FullyDrawnReporter;

    return-object v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use a {@link androidx.lifecycle.ViewModel} to store non config state."
    .end annotation

    .line 392
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->getCustom()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 521
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationEventDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;
    .locals 1

    .line 651
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->getEventDispatcher$activity()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 606
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onBackPressedDispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 665
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 2

    .line 535
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->ensureViewModelStore()V

    .line 540
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->_viewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initializeViewTreeOwners()V
    .locals 3

    .line 426
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0, v2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 427
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-static {v0, v2}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 428
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-static {v0, v2}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 429
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroidx/activity/OnBackPressedDispatcherOwner;

    invoke-static {v0, v2}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->set(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V

    .line 430
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroidx/activity/FullyDrawnReporterOwner;

    invoke-static {v0, v2}, Landroidx/activity/ViewTreeFullyDrawnReporterOwner;->set(Landroid/view/View;Landroidx/activity/FullyDrawnReporterOwner;)V

    .line 431
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    invoke-static {v0, v1}, Landroidx/navigationevent/ViewTreeNavigationEventDispatcherOwner;->set(Landroid/view/View;Landroidx/navigationevent/NavigationEventDispatcherOwner;)V

    return-void
.end method

.method public invalidateMenu()V
    .locals 0

    .line 506
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated in favor of using the Activity Result API\n      which brings increased type safety via an {@link ActivityResultContract} and the prebuilt\n      contracts for common intents available in\n      {@link androidx.activity.result.contract.ActivityResultContracts}, provides hooks for\n      testing, and allow receiving results in separate, testable classes independent from your\n      activity. Use\n      {@link #registerForActivityResult(ActivityResultContract, ActivityResultCallback)}\n      with the appropriate {@link ActivityResultContract} and handling the result in the\n      {@link ActivityResultCallback#onActivityResult(Object) callback}."
    .end annotation

    .line 775
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated in favor of using the\n      {@link OnBackPressedDispatcher} via {@link #getOnBackPressedDispatcher()}.\n      The OnBackPressedDispatcher controls how back button events are dispatched\n      to one or more {@link OnBackPressedCallback} objects."
    .end annotation

    .line 598
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedInput()Landroidx/navigationevent/DirectNavigationEventInput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigationevent/DirectNavigationEventInput;->backCompleted()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 839
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 840
    invoke-interface {v1, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 335
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    .line 336
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->contextAwareHelper:Landroidx/activity/contextaware/ContextAwareHelper;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/activity/contextaware/ContextAwareHelper;->dispatchOnContextAvailable(Landroid/content/Context;)V

    .line 337
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 338
    sget-object p1, Landroidx/lifecycle/ReportFragment;->Companion:Landroidx/lifecycle/ReportFragment$Companion;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ReportFragment$Companion;->injectIfNeededIn(Landroid/app/Activity;)V

    .line 339
    iget p1, p0, Landroidx/activity/ComponentActivity;->contentLayoutId:I

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 464
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 465
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/view/MenuHostHelper;->onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 475
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p1, p2}, Landroidx/core/view/MenuHostHelper;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in android.app.Activity"
    .end annotation

    .line 905
    iget-boolean v0, p0, Landroidx/activity/ComponentActivity;->dispatchingOnMultiWindowModeChanged:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 908
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 909
    new-instance v2, Landroidx/core/app/MultiWindowModeChangedInfo;

    invoke-direct {v2, p1}, Landroidx/core/app/MultiWindowModeChangedInfo;-><init>(Z)V

    invoke-interface {v1, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 921
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->dispatchingOnMultiWindowModeChanged:Z

    const/4 v0, 0x0

    .line 926
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->dispatchingOnMultiWindowModeChanged:Z

    .line 930
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 931
    new-instance v2, Landroidx/core/app/MultiWindowModeChangedInfo;

    invoke-direct {v2, p1, p2}, Landroidx/core/app/MultiWindowModeChangedInfo;-><init>(ZLandroid/content/res/Configuration;)V

    invoke-interface {v1, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 928
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->dispatchingOnMultiWindowModeChanged:Z

    throw p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 881
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 882
    invoke-interface {v1, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p2}, Landroidx/core/view/MenuHostHelper;->onMenuClosed(Landroid/view/Menu;)V

    .line 481
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in android.app.Activity"
    .end annotation

    .line 958
    iget-boolean v0, p0, Landroidx/activity/ComponentActivity;->dispatchingOnPictureInPictureModeChanged:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 961
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 962
    new-instance v2, Landroidx/core/app/PictureInPictureModeChangedInfo;

    invoke-direct {v2, p1}, Landroidx/core/app/PictureInPictureModeChangedInfo;-><init>(Z)V

    invoke-interface {v1, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 977
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->dispatchingOnPictureInPictureModeChanged:Z

    const/4 v0, 0x0

    .line 982
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->dispatchingOnPictureInPictureModeChanged:Z

    .line 986
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 987
    new-instance v2, Landroidx/core/app/PictureInPictureModeChangedInfo;

    invoke-direct {v2, p1, p2}, Landroidx/core/app/PictureInPictureModeChangedInfo;-><init>(ZLandroid/content/res/Configuration;)V

    invoke-interface {v1, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 984
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->dispatchingOnPictureInPictureModeChanged:Z

    throw p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 456
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 457
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p1, p3}, Landroidx/core/view/MenuHostHelper;->onPrepareMenu(Landroid/view/Menu;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated in favor of using the Activity Result API\n      which brings increased type safety via an {@link ActivityResultContract} and the prebuilt\n      contracts for common intents available in\n      {@link androidx.activity.result.contract.ActivityResultContracts}, provides hooks for\n      testing, and allow receiving results in separate, testable classes independent from your\n      activity. Use\n      {@link #registerForActivityResult(ActivityResultContract, ActivityResultCallback)} passing\n      in a {@link RequestMultiplePermissions} object for the {@link ActivityResultContract} and\n      handling the result in the {@link ActivityResultCallback#onActivityResult(Object) callback}."
    .end annotation

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    .line 802
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 803
    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 804
    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    .line 799
    invoke-virtual {v0, p1, v2, v1}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use a {@link androidx.lifecycle.ViewModel} to store non config state."
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 360
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 361
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->_viewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v2}, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_1
    new-instance v2, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    invoke-direct {v2}, Landroidx/activity/ComponentActivity$NonConfigurationInstances;-><init>()V

    .line 374
    invoke-virtual {v2, v0}, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->setCustom(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {v2, v1}, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    instance-of v0, v0, Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LifecycleRegistry"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 349
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 350
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 859
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onTrimMemory(I)V

    .line 860
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Consumer;

    .line 861
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .line 1010
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onUserLeaveHint()V

    .line 1011
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onUserLeaveHintListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1012
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peekAvailableContext()Landroid/content/Context;
    .locals 1

    .line 435
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->contextAwareHelper:Landroidx/activity/contextaware/ContextAwareHelper;

    invoke-virtual {v0}, Landroidx/activity/contextaware/ContextAwareHelper;->peekAvailableContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    const-string v0, "contract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    return-object p1
.end method

.method public final registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    const-string v0, "contract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activity_rq#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->nextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 816
    invoke-virtual {p2, v0, v1, p1, p3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    return-object p1
.end method

.method public removeMenuProvider(Landroidx/core/view/MenuProvider;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->menuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/MenuHostHelper;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->contextAwareHelper:Landroidx/activity/contextaware/ContextAwareHelper;

    invoke-virtual {v0, p1}, Landroidx/activity/contextaware/ContextAwareHelper;->removeOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/MultiWindowModeChangedInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnNewIntentListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/PictureInPictureModeChangedInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnTrimMemoryListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnUserLeaveHintListener(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->onUserLeaveHintListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 1

    .line 1026
    :try_start_0
    invoke-static {}, Landroidx/tracing/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "reportFullyDrawn() for ComponentActivity"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 1029
    :cond_0
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->reportFullyDrawn()V

    .line 1032
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getFullyDrawnReporter()Landroidx/activity/FullyDrawnReporter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/FullyDrawnReporter;->fullyDrawnReported()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public setContentView(I)V
    .locals 3

    .line 397
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->initializeViewTreeOwners()V

    .line 398
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;->viewCreated(Landroid/view/View;)V

    .line 399
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 403
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->initializeViewTreeOwners()V

    .line 404
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;->viewCreated(Landroid/view/View;)V

    .line 405
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 409
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->initializeViewTreeOwners()V

    .line 410
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;->viewCreated(Landroid/view/View;)V

    .line 411
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated in favor of using the Activity Result API\n      which brings increased type safety via an {@link ActivityResultContract} and the prebuilt\n      contracts for common intents available in\n      {@link androidx.activity.result.contract.ActivityResultContracts}, provides hooks for\n      testing, and allow receiving results in separate, testable classes independent from your\n      activity. Use\n      {@link #registerForActivityResult(ActivityResultContract, ActivityResultCallback)}\n      passing in a {@link StartActivityForResult} object for the {@link ActivityResultContract}."
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated in favor of using the Activity Result API\n      which brings increased type safety via an {@link ActivityResultContract} and the prebuilt\n      contracts for common intents available in\n      {@link androidx.activity.result.contract.ActivityResultContracts}, provides hooks for\n      testing, and allow receiving results in separate, testable classes independent from your\n      activity. Use\n      {@link #registerForActivityResult(ActivityResultContract, ActivityResultCallback)}\n      passing in a {@link StartActivityForResult} object for the {@link ActivityResultContract}."
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated in favor of using the Activity Result API\n      which brings increased type safety via an {@link ActivityResultContract} and the prebuilt\n      contracts for common intents available in\n      {@link androidx.activity.result.contract.ActivityResultContracts}, provides hooks for\n      testing, and allow receiving results in separate, testable classes independent from your\n      activity. Use\n      {@link #registerForActivityResult(ActivityResultContract, ActivityResultCallback)}\n      passing in a {@link StartIntentSenderForResult} object for the\n      {@link ActivityResultContract}."
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-super/range {p0 .. p6}, Landroidx/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated in favor of using the Activity Result API\n      which brings increased type safety via an {@link ActivityResultContract} and the prebuilt\n      contracts for common intents available in\n      {@link androidx.activity.result.contract.ActivityResultContracts}, provides hooks for\n      testing, and allow receiving results in separate, testable classes independent from your\n      activity. Use\n      {@link #registerForActivityResult(ActivityResultContract, ActivityResultCallback)}\n      passing in a {@link StartIntentSenderForResult} object for the\n      {@link ActivityResultContract}."
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    invoke-super/range {p0 .. p7}, Landroidx/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
