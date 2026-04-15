const VARIANTS = {
  default: 'bg-gray-100  text-gray-600',
  primary: 'bg-orange-100 text-orange-700',
  success: 'bg-green-100  text-green-700',
  warning: 'bg-yellow-100 text-yellow-700',
  danger:  'bg-red-100    text-red-700',
  info:    'bg-blue-100   text-blue-700',
}

const SIZES = {
  xs: 'text-xs px-2    py-0.5',
  sm: 'text-xs px-2.5  py-1',
  md: 'text-sm px-3    py-1.5',
}

export default function Badge({ children, variant = 'default', size = 'sm' }) {
  return (
    <span className={`inline-flex items-center font-medium rounded-full
                      ${VARIANTS[variant]} ${SIZES[size]}`}>
      {children}
    </span>
  )
}